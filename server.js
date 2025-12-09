const path = require("path");
const express = require("express");
const pg = require("pg");
const cors = require("cors");

const {
  PORT = 3000,
  DATABASE_URL,
  PGUSER = "postgres",
  PGPASSWORD = "12345",
  PGDATABASE = "quiz",
  PGHOST = "localhost",
  PGPORT = 5432,
  PGSSLMODE,
} = process.env;

const app = express();
app.use(cors());
app.use(express.json());

// Koneksi database PostgreSQL (mendukung DATABASE_URL untuk deployment)
const poolConfig = DATABASE_URL
  ? {
      connectionString: DATABASE_URL,
      ssl: PGSSLMODE === "require" ? { rejectUnauthorized: false } : false,
    }
  : {
      user: PGUSER,
      host: PGHOST,
      database: PGDATABASE,
      password: PGPASSWORD,
      port: Number(PGPORT) || 5432,
    };
const pool = new pg.Pool(poolConfig);

// Static assets (serve halaman di localhost)
app.use(express.static(path.join(__dirname, "pages")));
app.use("/style", express.static(path.join(__dirname, "style")));
app.use("/script", express.static(path.join(__dirname, "script")));
app.use("/data", express.static(path.join(__dirname, "data")));
app.use("/img", express.static(path.join(__dirname, "img")));

// Root -> berikan halaman utama
app.get("/", (req, res) => {
  res.sendFile(path.join(__dirname, "pages", "index.html"));
});

// Health check sederhana
app.get("/health", (req, res) => {
  res.json({ ok: true });
});

// API Soal
app.get("/api/questions", async (req, res) => {
  const topic = req.query.topic;
  const level = req.query.level;

  if (!topic) {
    return res.status(400).json({ error: "Topic tidak diberikan." });
  }

  console.log("🔍 Request soal topic:", topic, "| level:", level || "-");

  try {
    let sql = `SELECT id, category, level, question, choice_a, choice_b, choice_c, answer 
               FROM quiz 
               WHERE LOWER(category) = LOWER($1)`;
    const params = [topic];

    if (level) {
      sql += ` AND LOWER(level) = LOWER($2)`;
      params.push(level);
    }

    const q = await pool.query(sql, params);

    console.log(`📘 Jumlah soal ditemukan: ${q.rows.length}`);

    res.json(q.rows);
  } catch (err) {
    console.error("❌ DB ERROR:", err);
    res.status(500).json({ error: "Database Error" });
  }
});

app.listen(PORT, () => {
  console.log(`🚀 Server running at http://localhost:${PORT}`);
});

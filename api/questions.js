const { Pool } = require("pg");

const {
  DATABASE_URL,
  PGUSER = "postgres",
  PGPASSWORD = "12345",
  PGDATABASE = "quiz",
  PGHOST = "localhost",
  PGPORT = 5432,
  PGSSLMODE,
} = process.env;

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

const pool = new Pool(poolConfig);

module.exports = async (req, res) => {
  const { topic, level } = req.query || {};

  if (!topic) {
    return res.status(400).json({ error: "Topic tidak diberikan." });
  }

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
    res.json(q.rows);
  } catch (err) {
    console.error("❌ DB ERROR:", err);
    res.status(500).json({ error: "Database Error" });
  }
};

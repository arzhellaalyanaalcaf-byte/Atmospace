-- Jalankan file ini di database "quiz".
-- Contoh: psql -U postgres -d quiz -f db/seed.sql

DROP TABLE quiz;
CREATE TABLE IF NOT EXISTS quiz (
    id INT PRIMARY KEY,
    category VARCHAR(50) NOT NULL,
    level VARCHAR(10),
    question TEXT NOT NULL,
    choice_a TEXT NOT NULL,
    choice_b TEXT NOT NULL,
    choice_c TEXT NOT NULL,
    answer CHAR(1) NOT NULL
);

INSERT INTO quiz (id, category, level, question, choice_a, choice_b, choice_c, answer) VALUES
-- Pengertian (ID 1-5, level dikosongkan)
(1, 'pengertian', '', 'Mengapa meteorologi tidak berkaitan dengan meteor luar angkasa?', 'Karena meteorologi hanya membahas gerakan planet dan bintang', 'Karena meteorologi berfokus pada atmosfer bumi dan proses cuaca', 'Karena meteor tidak memengaruhi kehidupan manusia', 'B'),
(2, 'pengertian', '', 'Pernyataan mana yang paling menggambarkan definisi meteorologi menurut WMO?', 'Studi tentang pola gerakan awan menggunakan data satelit saja', 'Studi tentang atmosfer termasuk fisika, kimia, dan dinamika yang mengatur cuaca dan iklim', 'Studi tentang perubahan suhu laut secara eksklusif', 'B'),
(3, 'pengertian', '', 'Contoh fungsi meteorologi dalam keselamatan publik adalah?', 'Menentukan komposisi batuan di kerak bumi', 'Menyediakan prakiraan cuaca untuk mengurangi dampak cuaca ekstrem', 'Mengatur standar internasional untuk transportasi darat', 'B'),
(4, 'pengertian', '', 'Meteorologi membantu bidang pertanian karena?', 'Cuaca dan iklim memengaruhi waktu tanam serta risiko gagal panen', 'Meteorologi menentukan jenis pupuk yang tepat untuk semua tanaman', 'Meteorologi mengukur kesuburan tanah secara langsung', 'A'),
(5, 'pengertian', '', 'Mengapa meteorologi penting dalam mitigasi perubahan iklim?', 'Karena meteorologi menghapus emisi gas rumah kaca', 'Karena meteorologi menyediakan pemantauan atmosfer dan tren iklim', 'Karena meteorologi mengontrol suhu bumi', 'B'),

-- Awan (ID 6-10, level dikosongkan)
(6, 'awan', '', 'Awan terbentuk ketika uap air naik, mendingin, lalu mengalami proses?', 'Evaporasi', 'Kondensasi', 'Sublimasi', 'B'),
(7, 'awan', '', 'Awan apa yang termasuk kategori awan tinggi lebih dari 6 km?', 'Altostratus (As)', 'Cirrocumulus (Cc)', 'Stratocumulus (Sc)', 'B'),
(8, 'awan', '', 'Awan yang menandakan hujan lama dengan intensitas sedang adalah?', 'Nimbostratus (Ns)', 'Cumulus (Cu)', 'Cirrus (Ci)', 'A'),
(9, 'awan', '', 'Jika pagi hari muncul altocumulus (Ac), hal ini dapat menjadi tanda?', 'Langit cerah sepanjang hari', 'Potensi hujan badai pada sore hari', 'Perubahan cuaca 2-3 hari ke depan', 'B'),
(10, 'awan', '', 'Awan berbentuk seperti piring terbang (UFO) biasanya disebut?', 'Awan Mammatus', 'Awan Lentikular', 'Awan Kelvin-Helmholtz', 'B'),

-- Struktur Atmosfer (ID 11-15, level dikosongkan)
(11, 'struktur', '', 'Troposfer menjadi tempat kehidupan berlangsung karena?', 'Mengandung ozon pelindung UV', 'Masih memiliki udara yang cukup untuk bernapas', 'Suhunya selalu panas di seluruh ketinggiannya', 'B'),
(12, 'struktur', '', 'Fungsi utama lapisan stratosfer adalah?', 'Menyerap sinar ultraviolet berbahaya', 'Membakar meteorit yang masuk', 'Menghasilkan aurora', 'A'),
(13, 'struktur', '', 'Meteorit banyak terkikis sebelum mencapai permukaan bumi karena?', 'Terkikis di mesosfer akibat gesekan udara', 'Tersangkut di lapisan ozon', 'Terpantul kembali oleh eksosfer', 'A'),
(14, 'struktur', '', 'Aurora muncul di lapisan termosfer karena?', 'Terbentuknya awan tebal', 'Ionisasi partikel menghasilkan cahaya', 'Suhu sangat rendah', 'B'),
(15, 'struktur', '', 'Eksosfer memungkinkan interaksi gas dari luar angkasa karena?', 'Gravitasi sangat lemah pada ketinggian ini', 'Uap air sangat banyak', 'Suhunya selalu stabil', 'A'),

-- Fenomena (ID 16-20, level dikosongkan)
(16, 'fenomena', '', 'Badai petir umumnya terbentuk dari jenis awan?', 'Stratus', 'Cirrus', 'Cumulonimbus', 'C'),
(17, 'fenomena', '', 'Kabut terbentuk ketika?', 'Suhu naik drastis', 'Udara lembap mendingin hingga titik embun', 'Angin bertiup sangat kencang', 'B'),
(18, 'fenomena', '', 'Warna pelangi muncul karena proses?', 'Sublimasi', 'Bias & pantulan cahaya', 'Pemanasan permukaan', 'B'),
(19, 'fenomena', '', 'Puting beliung umumnya muncul saat?', 'Atmosfer stabil', 'Awan Cumulonimbus berkembang pesat', 'Hujan orografis', 'B'),
(20, 'fenomena', '', 'Hujan es terbentuk ketika?', 'Awan rendah membawa uap air', 'Arus naik sangat kuat dalam awan Cumulonimbus', 'Awan cirrus menebal', 'B'),

-- Parameter (ID 21-25, level dikosongkan)
(21, 'parameter', '', 'Parameter yang diukur pada ketinggian 1.25-2 m dan digunakan untuk analisis stabilitas atmosfer adalah?', 'Tekanan atmosfer', 'Suhu udara', 'Kelembapan spesifik', 'B'),
(22, 'parameter', '', 'Pengukuran suhu tanah pada kedalaman 5-100 cm digunakan untuk?', 'Pemodelan radiasi surya', 'Hidrologi, model pertanian, dan deteksi frost', 'Analisis jet stream', 'B'),
(23, 'parameter', '', 'Kelembapan udara penting untuk?', 'Penentuan arah angin', 'Analisis kondensasi, pembentukan awan, dan kabut', 'Penentuan ketebalan es laut', 'B'),
(24, 'parameter', '', 'Jet stream dan profil angin diperoleh dari?', 'Solar radiometer', 'Radar angin / wind profiler', 'Sunshine recorder', 'B'),
(25, 'parameter', '', 'Aerosol Optical Depth dan SSA termasuk ke dalam?', 'Parameter cryosphere', 'Parameter komposisi atmosfer', 'Parameter radiasi permukaan', 'B'),

-- Alat (ID 26-30, level dikosongkan)
(26, 'alat', '', 'Fungsi utama taman alat Meteorologi adalah?', 'Tempat kalibrasi alat berat', 'Pusat pengamatan cuaca harian', 'Tempat menanam vegetasi rendah', 'B'),
(27, 'alat', '', 'Higrometer digunakan untuk mengukur?', 'Suhu udara', 'Kelembapan udara', 'Tekanan atmosfer', 'B'),
(28, 'alat', '', 'Alat untuk mengukur durasi penyinaran matahari adalah?', 'Heliograf', 'Barometer', 'Campbell-Stokes Sunshine Recorder', 'C'),
(29, 'alat', '', 'Rain gauge digunakan untuk mengukur?', 'Arah angin', 'Curah hujan', 'Intensitas cahaya', 'B'),
(30, 'alat', '', 'Anemometer digunakan untuk mengukur?', 'Kecepatan angin', 'Awan rendah', 'Radiasi matahari', 'A'),

-- Pengertian Lanjutan (ID 31-35, level dikosongkan)
(31, 'pengertian', '', 'Cabang ilmu yang mempelajari lapisan gas yang menyelimuti bumi beserta seluruh proses fisika dan dinamika di dalamnya disebut?', 'Klimatologi', 'Meteorologi', 'Hidrologi', 'B'),
(32, 'pengertian', '', 'Kata "MeteÅron" dari Bahasa Yunani berarti?', 'Bintang jatuh', 'Fenomena di udara', 'Perubahan suhu', 'B'),
(33, 'pengertian', '', 'Apa perbedaan utama antara Meteorologi dan Klimatologi?', 'Meteorologi fokus pada cuaca harian, Klimatologi pada rata-rata jangka panjang', 'Klimatologi mempelajari luar angkasa', 'Meteorologi hanya berurusan dengan suhu', 'A'),
(34, 'pengertian', '', 'Bentuk air yang jatuh dari atmosfer ke permukaan bumi seperti hujan, gerimis, atau salju disebut?', 'Evaporasi', 'Presipitasi', 'Kondensasi', 'B'),
(35, 'pengertian', '', 'Kondisi atmosfer dalam periode waktu yang singkat dan terbatas (jam ke hari) adalah definisi dari?', 'Iklim', 'Cuaca', 'Musim', 'B'),

-- Awan Lanjutan (ID 36-40, level dikosongkan)
(36, 'awan', '', 'Awan yang berada pada ketinggian lebih dari 6 km (â‰¥ 6 km) dikategorikan sebagai awanâ€¦', 'Menengah', 'Tinggi (High Level)', 'Rendah', 'B'),
(37, 'awan', '', 'Awan apa yang tampak seperti selimut tipis, terbentuk dari kristal es, dan sering menghasilkan fenomena halo di sekitar matahari/bulan?', 'Cirrus (Ci)', 'Cirrostratus (Cs)', 'Altocumulus (Ac)', 'B'),
(38, 'awan', '', 'Awan yang muncul pada ketinggian menengah, berbentuk gumpalan putih atau abu yang memiliki bayangan dan sering berkelompok, adalah?', 'Stratus (St)', 'Altocumulus (Ac)', 'Cirrocumulus (Cc)', 'B'),
(39, 'awan', '', 'Awan apa yang dikenal sebagai awan badai, berkembang vertikal tinggi, dan mampu menghasilkan hujan deras, petir, hingga hujan es?', 'Nimbostratus (Ns)', 'Cumulonimbus (Cb)', 'Stratocumulus (Sc)', 'B'),
(40, 'awan', '', 'Awan yang berbentuk seperti lensa atau piring terbang (UFO-like) yang sering muncul di sekitar daerah pegunungan disebut?', 'Awan Mammatus', 'Awan Lentikular', 'Awan Kelvin-Helmholtz', 'B'),

-- Struktur Atmosfer Lanjutan (ID 41-45, level dikosongkan)
(41, 'struktur', '', 'Lapisan atmosfer terbawah di mana manusia, tumbuhan, dan hewan hidup, serta terjadi kestabilan udara, adalah?', 'Stratosfer', 'Troposfer', 'Mesosfer', 'B'),
(42, 'struktur', '', 'Fungsi utama lapisan Stratosfer adalah melindungi Bumi dari gelombang sinar?', 'Inframerah', 'Ultraviolet (UV)', 'Sinar X', 'B'),
(43, 'struktur', '', 'Fenomena cahaya warna-warni yang indah seperti Aurora (Cahaya Utara) terjadi pada lapisan?', 'Eksosfer', 'Termosfer', 'Stratosfer', 'B'),
(44, 'struktur', '', 'Mengapa lapisan Mesosfer memiliki fungsi utama melindungi Bumi dari benda-benda angkasa yang masuk?', 'Karena Mesosfer memiliki suhu yang sangat panas', 'Karena benda angkasa "terbakar" atau terkikis akibat gesekan di lapisan ini', 'Karena memiliki lapisan ozon yang tebal', 'B'),
(45, 'struktur', '', 'Lapisan atmosfer yang kerap dimanfaatkan untuk keperluan penyiaran radio dan televisi karena memiliki muatan listrik (ionisasi) adalah?', 'Mesosfer', 'Termosfer', 'Eksosfer', 'B'),

-- Fenomena Lanjutan (ID 46-50, level dikosongkan)
(46, 'fenomena', '', 'Jenis hujan apa yang terjadi saat udara lembab dipaksa naik di lereng pegunungan, kemudian mendingin dan berkondensasi?', 'Hujan Konvektif', 'Hujan Orografis', 'Hujan Frontal', 'B'),
(47, 'fenomena', '', 'Tiga komponen utama yang dibutuhkan untuk pembentukan Badai Petir (Thunderstorm) adalah Kelembapan, Mekanisme Pengangkatan, dan?', 'Suhu Rendah', 'Ketidakstabilan Atmosfer', 'Tekanan Tinggi', 'B'),
(48, 'fenomena', '', 'Fenomena optik atmosfer yang membentuk cincin cahaya di sekeliling Matahari atau Bulan akibat pembiasan pada kristal es berbentuk heksagonal di awan sirus adalah?', 'Sundog', 'Halo', 'Glory', 'B'),
(49, 'fenomena', '', 'Apa nama kolom angin berputar berkecepatan tinggi berskala lokal dan berdurasi singkat yang berasal dari awan Cumulonimbus, sering terjadi di wilayah Indonesia?', 'Tornado', 'Puting Beliung', 'Siklon Tropis', 'B'),
(50, 'fenomena', '', 'Proses pembentukan hujan es terjadi ketika butiran air mengalami siklus naikâ€“turun berulang kali melalui lapisan bersuhu di bawah nol yang didorong oleh?', 'Angin Darat', 'Updraft (Arus Naik) yang sangat kuat', 'Pendinginan Radiatif', 'B'),

-- Parameter Lanjutan (ID 51-55, level dikosongkan)
(51, 'parameter', '', 'Instrumen utama yang digunakan untuk mengukur tekanan atmosfer (barometric pressure) adalah?', 'Termometer', 'Barometer', 'Anemometer', 'B'),
(52, 'parameter', '', 'Satuan yang umum digunakan untuk mengukur laju jatuhnya hujan (Intensitas Hujan) adalah?', 'm/s', 'mm per jam (mm/jam)', 'inHg', 'B'),
(53, 'parameter', '', 'Parameter yang digunakan dalam persamaan pengatur atmosfer untuk memprediksi kondisi atmosfer di masa depan disebut parameter?', 'Diagnostik', 'Prognostik', 'Hidrometeorologi', 'B'),
(54, 'parameter', '', 'Komponen vektor angin yang menggambarkan pergerakan angin dalam arah baratâ€“timur adalah?', 'Komponen v (Angin Meridional)', 'Komponen u (Angin Zonal)', 'Komponen w (Angin Vertikal)', 'B'),
(55, 'parameter', '', 'Parameter yang merupakan gabungan dari proses evaporasi (dari permukaan) dan transpirasi (dari tanaman) adalah?', 'Presipitasi', 'Evapotranspirasi', 'Visibilitas', 'B'),

-- Alat Lanjutan (ID 56-60, level dikosongkan)
(56, 'alat', '', 'Instrumen yang digunakan untuk mengukur kecepatan angin dan dipasang di ketinggian 10 meter untuk menghindari halangan disebut?', 'Barometer', 'Anemometer', 'Termometer', 'B'),
(57, 'alat', '', 'Alat yang digunakan untuk mengukur jumlah curah hujan yang jatuh pada suatu periode waktu tertentu adalah?', 'Higrometer', 'Rain Gauge (Ombrometer)', 'Wind Vane', 'B'),
(58, 'alat', '', 'Perawatan rutin apa yang penting dilakukan pada Rain Gauge untuk menjaga akurasi pengukuran?', 'Mengecek baterai', 'Membersihkan corong agar tidak tersumbat daun/serangga', 'Mengganti kertas harian', 'B'),
(59, 'alat', '', 'Gangguan pengukuran yang dapat mengganggu Campbell-Stokes sehingga durasi penyinaran menjadi salah adalah?', 'Genangan air', 'Bayangan (dari pohon atau gedung)', 'Angin kencang', 'B'),
(60, 'alat', '', 'Perangkat pengamatan yang diterbangkan menggunakan balon cuaca untuk mengukur suhu, kelembapan, dan tekanan udara secara vertikal pada berbagai ketinggian atmosfer disebut?', 'Heliograf', 'Radiosonde', 'AWS', 'B'),

-- Kuis General (ID 61-75) - HANYA INI YANG MEMILIKI LEVEL
(61, 'general', 'easy', 'Pelangi terbentuk karena peristiwa fisika apa pada tetesan hujan?', 'Pembiasan dan pantulan cahaya', 'Evaporasi cepat tetesan hujan', 'Reaksi kimia dalam tetesan air', 'A'),
(62, 'general', 'easy', 'Awan cumulus biasanya identik dengan kondisi cuaca?', 'Gumpalan putih rendah â†’ cuaca relatif cerah hingga berawan konvektif', 'Lapisan tipis di ketinggian tinggi â†’ indikasi hujan segera', 'Awan gelap tebal â†’ hujan stabil lama', 'A'),
(63, 'general', 'easy', 'Instrumen yang dipakai untuk mengukur tekanan atmosfer adalah?', 'Anemometer', 'Barometer', 'Hygrometer', 'B'),
(64, 'general', 'easy', 'Kabut adalah:', 'Awan yang terbentuk di stratosfer?', 'Awan rendah yang menempel di permukaan dan mengurangi jarak pandang', 'Bentuk hujan es kecil', 'B'),
(65, 'general', 'easy', 'Petir dalam badai petir memiliki suhu sangat tinggi, lebih panas dari permukaan matahari. Pernyataan ini adalah?', 'Fakta ilmiah', 'Salah; petir lebih dingin', 'Hanya terjadi saat hujan es', 'A'),

(66, 'general', 'medium', 'Awan yang menutupi langit luas dan menghasilkan hujan lama intensitas sedang adalah?', 'Cumulus', 'Nimbostratus', 'Cirrus', 'B'),
(67, 'general', 'medium', 'Alat meteorologi untuk mengukur kecepatan angin adalah?', 'Barometer', 'Anemometer', 'Rain gauge', 'B'),
(68, 'general', 'medium', 'Hujan orografis terjadi ketika?', 'Massa udara hangat bergerak di atas laut dingin', 'Udara lembap naik karena pegunungan dan mengalami pendinginan hingga kondensasi', 'Konvergensi angin tanpa pengangkatan vertikal', 'B'),
(69, 'general', 'medium', 'Ketinggian standar pengukuran suhu udara menurut WMO adalah?', '0 meter', '1.25 â€“ 2 meter dari permukaan tanah', '10 meter', 'B'),
(70, 'general', 'medium', 'Awan lentikular sering terbentuk di pegunungan karena?', 'Konveksi lokal dari pemanasan permukaan', 'Gelombang atmosfer (mountain wave) yang mengangkat dan menurunkan udara secara berulang', 'Arus laut hangat', 'B'),

(71, 'general', 'hard', 'CAPE digunakan untuk mengukur?', 'Jumlah uap air atmosfer', 'Energi potensial konvektif yang tersedia untuk updraft badai', 'Ketinggian dasar awan cumulonimbus', 'B'),
(72, 'general', 'hard', 'Faktor penyebab curah hujan tercatat lebih rendah dari nilai sebenarnya pada pengamatan permukaan adalah?', 'Rain gauge berada dalam bayangan objek', 'Rain gauge terlalu besar', 'Rain gauge ditempatkan di beton', 'A'),
(73, 'general', 'hard', 'Jika pagi terlihat altocumulus yang luas, interpretasi yang paling mungkin adalah?', 'Atmosfer sangat stabil', 'Potensi konveksi meningkat â†’ kemungkinan badai sore', 'Tanda pasti hujan ekstrem 1 jam lagi', 'B'),
(74, 'general', 'hard', 'Nilai dBZ radar yang sangat tinggi menunjukkan?', 'Aerosol halus pada troposfer', 'Presipitasi kuat dengan kemungkinan hail dan hujan deras', 'Awan cirrus tipis', 'B'),
(75, 'general', 'hard', 'Cold surge dari Siberia dapat memperkuat konveksi maritim karena?', 'Menurunkan suhu laut', 'Menimbulkan konvergensi dan interaksi dengan massa lembap sehingga meningkatkan pengangkatan udara', 'Menciptakan inversi yang menghambat awan', 'B')
ON CONFLICT (id) 
DO UPDATE SET
    category = EXCLUDED.category,
    level = EXCLUDED.level,
    question = EXCLUDED.question,
    choice_a = EXCLUDED.choice_a,
    choice_b = EXCLUDED.choice_b,
    choice_c = EXCLUDED.choice_c,
    answer = EXCLUDED.answer;

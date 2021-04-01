const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

pool.query(`
SELECT t.name as teacher, c.name as cohort
FROM cohorts c
JOIN students s ON c.id = s.cohort_id
JOIN assistance_requests ar ON s.id = ar.student_id
JOIN teachers t ON ar.teacher_id = t.id
WHERE c.name = '${process.argv[2] || 'JUL02'}'
GROUP BY teacher, cohort
ORDER BY teacher
LIMIT ${process.argv[3] || 5};
`)
.then(res => {
  res.rows.forEach(row => {
    console.log(`${row.cohort}: ${row.teacher}`);
  })
});
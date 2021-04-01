const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const queryString = `
SELECT t.name as teacher, c.name as cohort
FROM cohorts c
JOIN students s ON c.id = s.cohort_id
JOIN assistance_requests ar ON s.id = ar.student_id
JOIN teachers t ON ar.teacher_id = t.id
WHERE c.name LIKE $1
GROUP BY teacher, cohort
ORDER BY teacher
LIMIT $2
`;

const cohortName = process.argv[2] || 'JUL02';
const limit = process.argv[3] || 5;
const values = [`%${cohortName}%`, limit];

pool.query(queryString, values)
  .then(res => {
    res.rows.forEach(row => {
      console.log(`${row.cohort}: ${row.teacher}`);
    })
  }).catch(err => console.error('query error', err.stack));
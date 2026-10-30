import { pool } from "../db.js";

export async function getAllStudents() {
  const result = await pool.query("SELECT * FROM students");
  console.log(result);
  return result.rows;
}

export async function getStudentById(id) {
  const result = await pool.query("SELECT * FROM students WHERE id = $1", [id]);
  if (result.rowCount === 0) {
    return null;
  } else {
    return result.rows[0];
  }
}

//Magen til getAllStudents men med et tilføjet array - præcis som da vi skrev funktionen i index.js
export async function createStudent(student) {
  const result = await pool.query(
    "INSERT INTO students (name, house, year) VALUES ($1, $2, $3) RETURNING id, name, house, year",
    [student.name, student.house, student.year]
  );
  return result.rows[0];
}

//magen til getStudentById men med et tilføjet array - præcis som da vi skrev funktionen i index.js
export async function updateStudent(id, student) {
  const result = await pool.query(
    "UPDATE students SET name = $1, house = $2, year = $3 WHERE id = $4 RETURNING id, name, house, year",
    [student.name, student.house, student.year, id]
  );
  if (result.rowCount === 0) {
    return null;
  } else {
    return result.rows[0];
  }
}

//i delete funktionen skal vi ikke returnere noget, men bare tjekke om der er blevet slettet noget.
export async function deleteStudent(id) {
  const result = await pool.query("DELETE FROM students WHERE id = $1", [id]);
  return result.rowCount > 0;
}



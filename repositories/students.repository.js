import { pool } from "../db.js";

export async function getAllStudents() {
  const result = await pool.query("SELECT * FROM students ORDER BY id");
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

export async function createStudent(student) {
  const result = await pool.query(
    "INSERT INTO students (name, house, school_year, birthday) VALUES ($1, $2, $3, $4) RETURNING *",
    [student.name, student.house, student.school_year, student.birthday]
  );
  return result.rows[0];
}

export async function updateStudent(id, student) {
  const result = await pool.query(
    "UPDATE students SET name = $1, house = $2, school_year = $3, birthday = $4 WHERE id = $5 RETURNING *",
    [student.name, student.house, student.school_year, student.birthday, id]
  );
  if (result.rowCount === 0) {
    return null;
  } else {
    return result.rows[0];
  }
}

export async function deleteStudent(id) {
  const result = await pool.query("DELETE FROM students WHERE id = $1", [id]);
  return result.rowCount > 0;
}
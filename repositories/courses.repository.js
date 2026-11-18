import { pool } from "../db.js";

export async function getAllCourses() {
  const result = await pool.query("SELECT * FROM courses ORDER BY id");
  return result.rows;
}

export async function getCourseById(id) {
  const result = await pool.query("SELECT * FROM courses WHERE id = $1", [id]);
  if (result.rowCount === 0) {
    return null;
  } else {
    return result.rows[0];
  }
}

export async function createCourse(course) {
  const result = await pool.query(
    "INSERT INTO courses (name, teacher, students, type, level, school_year) VALUES ($1, $2, $3, $4, $5, $6) RETURNING *",
    [course.name, course.teacher, course.students, course.type, course.level, course.school_year]
  );
  return result.rows[0];
}

export async function updateCourse(id, course) {
  const result = await pool.query(
    "UPDATE courses SET name = $1, teacher = $2, students = $3, type = $4, level = $5, school_year = $6 WHERE id = $7 RETURNING *",
    [course.name, course.teacher, course.students, course.type, course.level, course.school_year, id]
  );
  if (result.rowCount === 0) {
    return null;
  } else {
    return result.rows[0];
  }
}

export async function deleteCourse(id) {
  const result = await pool.query("DELETE FROM courses WHERE id = $1", [id]);
  return result.rowCount > 0;
}
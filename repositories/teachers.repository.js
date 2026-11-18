// import { pool } from "../db.js";

// export async function getAllTeachers() {
//   const result = await pool.query("SELECT * FROM teachers");
//   console.log(result);
//   return result.rows;
// }

// export async function getTeacherById(id) {
//   const result = await pool.query("SELECT * FROM teachers WHERE id = $1", [id]);
//   if (result.rowCount === 0) {
//     return null;
//   } else {
//     return result.rows[0];
//   }
// }

// //Magen til getAllStudents men med et tilføjet array - præcis som da vi skrev funktionen i index.js

// export async function createTeacher(teacher) {
//   const result = await pool.query("INSERT INTO teachers (name, house) VALUES ($1, $2) RETURNING id, name, house", [teacher.KOLONNE1, teacher.KOLONNE2]);
//   return result.rows[0];
// }

// export async function updateTeacher(id, teacher) {
//   const result = await pool.query("UPDATE teachers SET name = $1, house = $2 WHERE id = $3 RETURNING id, name, house", [teacher.KOLONNE1, teacher.KOLONNE2, id]);
//   if (result.rowCount === 0) {
//     return null;
//   } else {
//     return result.rows[0];
//   }
// }

// export async function deleteTeacher(id) {
//   const result = await pool.query("DELETE FROM teachers WHERE id = $1", [id]);
//   return result.rowCount > 0;
// }


//opdateret efter nye ting i databasen (Hogwarts III) med house_id, employment_start, currently_active og deceased. Derfor er der ændret i createTeacher og updateTeacher, så de passer til de nye kolonner i databasen.

import { pool } from "../db.js";

export async function getAllTeachers() {
  const result = await pool.query("SELECT * FROM teachers ORDER BY id");
  return result.rows;
}

export async function getTeacherById(id) {
  const result = await pool.query("SELECT * FROM teachers WHERE id = $1", [id]);
  if (result.rowCount === 0) {
    return null;
  } else {
    return result.rows[0];
  }
}

export async function createTeacher(teacher) {
  const result = await pool.query(
    "INSERT INTO teachers (name, house_id, employment_start, currently_active, deceased) VALUES ($1, $2, $3, $4, $5) RETURNING *",
    [teacher.name, teacher.house_id, teacher.employment_start, teacher.currently_active, teacher.deceased]
  );
  return result.rows[0];
}

export async function updateTeacher(id, teacher) {
  const result = await pool.query(
    "UPDATE teachers SET name = $1, house_id = $2, employment_start = $3, currently_active = $4, deceased = $5 WHERE id = $6 RETURNING *",
    [teacher.name, teacher.house_id, teacher.employment_start, teacher.currently_active, teacher.deceased, id]
  );
  if (result.rowCount === 0) {
    return null;
  } else {
    return result.rows[0];
  }
}

export async function deleteTeacher(id) {
  const result = await pool.query("DELETE FROM teachers WHERE id = $1", [id]);
  return result.rowCount > 0;
}
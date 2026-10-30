import * as studentsRepository from "../repositories/students.repository.js";

export async function getAllStudents(req, res) {
  try {
    const allStudents = await studentsRepository.getAllStudents();
    console.log("all Students:", allStudents);
    res.json(allStudents);
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: "Database error", code: err.code });
  }
}

export async function getStudentById(req, res) {
  try {
    const id = req.params.id;
    const student = await studentsRepository.getStudentById(id);

    if (student) {
      res.status(200).json(student);
    } else {
      res.sendStatus(404);
    }
  } catch (err) {
    console.log(err);
    res.status(500).json({ error: "Database error" });
  }
}

//alle nedenstående controllers er identiske med getStudentById - med undtagelse af createStudent, da der ikker er noget "der ikke findes" i forvejen, når vi opretter en ny student. Den ligner derfor getAllStudents.

export async function createStudent(req, res) {
  try {
    const student = req.body;
    const newStudent = await studentsRepository.createStudent(student);
    res.status(201).json(newStudent);
  } catch (err) {
    console.log(err);
    res.status(500).json({ error: "Database error" });
  }
}

export async function updateStudent(req, res) {
  try {
    const id = req.params.id;
    const student = req.body;
    const updatedStudent = await studentsRepository.updateStudent(id, student);

    if (updatedStudent) {
      res.status(200).json(updatedStudent);
    } else {
      res.sendStatus(404);
    }
  } catch (err) {
    console.log(err);
    res.status(500).json({ error: "Database error" });
  }
}

export async function deleteStudent(req, res) {
  try {
    const id = req.params.id;
    const deleted = await studentsRepository.deleteStudent(id);

    if (deleted) {
      res.sendStatus(204);
    } else {
      res.sendStatus(404);
    }
  } catch (err) {
    console.log(err);
    res.status(500).json({ error: "Database error" });
  }
}

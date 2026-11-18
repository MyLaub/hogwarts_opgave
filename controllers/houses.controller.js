import * as housesRepository from "../repositories/houses.repository.js";

export async function getAllHouses(req, res) {
  // try {
  const allHouses = await housesRepository.getAllHouses();
  console.log("all Houses:", allHouses);
  res.json(allHouses);
  // } catch (err) {
  //   console.error(err);
  //   res.status(500).json({
  //     message: "Something went wrong in the database",
  //     error: "Database error",
  //     statusCode: "500",
  //   });
  // }
}

export async function getHouseById(req, res) {
  // try {
  const id = req.params.id;
  const house = await housesRepository.getHouseById(id);

 if (teacher) {
    res.status(200).json(teacher);
  }  
    throw new HTTPError(404, "teacher does not exist");
}


import express from "express";
import multer from "multer";
import {
  addRegistration,
  getAllRegistrations,
  getRegistrationById,
  deleteRegistration,
} from "./registration.service";
import { db } from "../../shared/lib/db"; // db import is here for the PUT route.

const router = express.Router();

const storage = multer.diskStorage({
  destination: "./uploads",
  filename: (req, file, cb) => cb(null, Date.now() + "-" + file.originalname),
});
const upload = multer({ storage });

router.post("/", upload.single("paymentProof"), async (req: any, res) => {
  try {
    const payload = req.body;
    const paymentProofPath = req.file.path;

    const result = await addRegistration(payload, paymentProofPath);
    res.status(201).json(result);
  } catch (err: any) {
    res.status(500).json({ error: err.message });
  }
});

router.get("/", async (req, res) => {
  const registrations = await getAllRegistrations();
  res.status(200).json(registrations);
});

router.get("/:id", async (req, res) => {
  const id = req.params.id;
  const registration = await getRegistrationById(id);
  // Handle case where registration is not found
  if (!registration) {
    return res.status(404).json({ error: "Registration not found" });
  }
  res.status(200).json(registration);
});

router.delete("/:id", async (req, res) => {
  const id = req.params.id;
  try {
    await deleteRegistration(id);
    res.status(200).json({ message: "Deleted successfully" });
  } catch (err: any) {
    // Handle case where ID might not exist or other DB errors
    res.status(500).json({ error: "Deletion failed: " + err.message });
  }
});

// Express Route (PUT /api/qrscanner/:id) - This is the correct place for the PUT route
router.put('/:id', async (req, res) => {
  const { id } = req.params;
  const data = req.body;

  try {
    const updated = await db.registration.update({
      where: { id },
      data: {
        ...data,
        extraFields: data.extraFields || undefined
        // Ensure extraFields is an object. If it comes as a string, parse it.
        // If it comes as an object, Prisma handles it directly.
        // Given your frontend sends an array of {label, value}, this might need adjustment.
        // Example: extraFields: data.extraFields ? JSON.parse(data.extraFields) : undefined // if stringified
        // Or directly: extraFields: data.extraFields // if it's already an object
      }
    });
    res.json(updated);
  } catch (err) {
    console.error(err);
    // Be more specific with error messages, e.g., if ID not found.
    res.status(500).json({ error: "Update failed" });
  }
});

module.exports = router;
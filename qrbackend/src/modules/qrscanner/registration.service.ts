import { db } from "../../shared/lib/db";

export async function addRegistration(payload: any, paymentProofPath: string) {
  return await db.registration.create({
    data: {
      fullName: payload.fullName,
      email: payload.email,
      phone: payload.phone,
      collegeName: payload.collegeName,
      department: payload.department,
      year: payload.year,
      paymentMode: payload.paymentMode,
      paymentProof: paymentProofPath,
      extraFields: payload.extraFields || undefined, // Pass directly as object/array
    },
  });
}

export async function getAllRegistrations() {
  return await db.registration.findMany({
    orderBy: {
      createdAt: 'desc',
    },
  });
}

export async function getRegistrationById(id: string) {
  return await db.registration.findUnique({
    where: { id },
  });
}

export async function deleteRegistration(id: string) {
  return await db.registration.delete({
    where: { id },
  });
}
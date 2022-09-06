import db from "../../utils/test.db.js";
import query from "./query.js";

const CHECK = async ({ userName }) => {
  try {
    return await db.fetch(query.CHECK, userName);
  } catch (e) {
    console.log(e.message);
  }
};

const LOGIN = async ({ userName, password }) => {
  try {
    return await db.fetch(query.LOGIN, userName, password);
  } catch (e) {
    console.log(e.message);
  }
};

const REGISTER = async ({
  fullName,
  emailOrPhone,
  userName,
  region,
  gender,
  password,
}) => {
  try {
    return await db.fetch(
      query.REGISTER,
      fullName,
      emailOrPhone,
      userName,
      region,
      password,
      gender
    );
  } catch (e) {
    console.log(e.message);
  }
};

async function ADD_INFO({ first_subject_id, second_subject_id, faculty_id }, userId) {
  try {
    return await db.fetch(query.ADD_INFO, userId, first_subject_id, second_subject_id, faculty_id);
  } catch (e) {
    console.error(e);
  }
}
export default {
  CHECK,
  LOGIN,
  REGISTER,
  ADD_INFO
};

import db from "../../utils/test.db.js";
import query from "./query.js";

const GET = async ({ first, second }) => {
  try {
    return await db.fetchAll(query.GET, first, second);
  } catch (e) {
    console.log(e.message);
  }
};

const GET_FAC = async (id) => {
  try {
    return await db.fetch(query.GET_FAC, id);
  } catch (e) {
    console.log(e.message);
  }
};

export default {
  GET,
  GET_FAC,
};

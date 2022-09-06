import db from "../../utils/test.db.js";
import query from "./query.js";

const GET = async () => {
  try {
    return await db.fetchAll(query.GET);
  } catch (e) {
    console.log(e.message);
  }
};

async function GET_OTHER(id) {
  try {
    return await db.fetchAll(query.GET_OTHER, id);
  } catch (e) {
    console.error(e.message);
  }
}
export default {
  GET,
  GET_OTHER,
};

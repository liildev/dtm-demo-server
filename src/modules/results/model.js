import db from "../../utils/test.db.js";
import { GET_RESULTS } from "./query.js";

async function GET({ id = 0 }, userId = 0) {
  try {
    return await db.fetchAll(GET_RESULTS, id, userId);
  } catch (e) {
    console.error(e);
  }
}

export default { GET };

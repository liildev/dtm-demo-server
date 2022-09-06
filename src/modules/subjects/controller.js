import ApiError from "../../error/api.error.js";
import model from "./model.js";

class SubController {
  async GET(req, res, next) {
    try {
      let { id } = req.params;

      if (id) {
        const otherSubjects = await model.GET_OTHER(id);
        return res.status(200).json({
          status: 200,
          data: otherSubjects,
        });
      }

      const subjects = await model.GET();
      
      if (subjects) {
        res.status(200).json({
          status: 200,
          data: subjects,
        });
      }
    } catch (error) {
      next(ApiError.internal(error.message));
    }
  }
}

export default new SubController();

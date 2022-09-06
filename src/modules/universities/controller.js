import ApiError from "../../error/api.error.js";
import model from "./model.js";

class UniverController {
  async GET(req, res, next) {
    try {
      let { id } = req.params;

      if (id) {
        const faculties = await model.GET_FAC(id);
        return res.status(200).json({
          status: 200,
          data: faculties,
        });
      }

      const unversities = await model.GET(req.query);

      if (unversities) {
        res.status(200).json({
          status: 200,
          data: unversities,
        });
      }

    } catch (error) {
      next(ApiError.internal(error.message));
    }
  }
}

export default new UniverController();

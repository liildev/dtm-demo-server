import ApiError from "../../error/api.error.js";
import model from "./model.js";

class ResultController {
  async GET(req, res, next) {
    try {
      let results = await model.GET(req.params, req?.userId);

      if (results) {
        res.status(200).send({
          status: 200,
          data: results,
        });
      } else {
        next(ApiError.badRequest("Client Error"));
      }
    } catch (error) {
      next(ApiError.internal(error.message));
    }
  }
}

export default new ResultController();

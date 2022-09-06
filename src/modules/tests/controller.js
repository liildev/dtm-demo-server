import ApiError from "../../error/api.error.js";
import model from "./model.js";
import mixArray from '../../utils/mixArray.js';


class TestsController {
  async GET(req, res, next) {
    try {
      let firstSubjectTests = await model.GET_FIRST_SUBJECT(req.userId);
      let secondSubjectTests = await model.GET_SECOND_SUBJECT(req.userId);

      if (firstSubjectTests && secondSubjectTests) {
        return res.status(200).send({
          status: 200,
          data: {
            firstSubjectTests: mixArray(firstSubjectTests),
            secondSubjectTests: mixArray(secondSubjectTests),
          },
        });
      } else {
        next(ApiError.badRequest("Client Error"));
      }
    } catch (error) {
      next(ApiError.internal(error.message));
    }
  }

  async CHECK(req, res, next) {
    try {
      let testResult = await model.CHECK(req.body, req.userId);
      if (testResult) {
        res.status(200).send({
          status: 200,
          data: testResult,
        });
      } else {
        next(ApiError.badRequest("Client error"));
      }
    } catch (error) {
      next(ApiError.internal(error.message));
    }
  }
}

export default new TestsController();

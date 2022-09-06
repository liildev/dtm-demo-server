import ApiError from "../../error/api.error.js";
import jwt from "../../utils/jwt.generator.js";
import model from "./model.js";

class UsersController {
  async REGISTER(req, res, next) {
    try {
      let user = await model.CHECK(req.body);

      if (user) {
        return next(ApiError.badRequest("Username is already taken"));
      }

      let newUser = await model.REGISTER(req.body);

      if (newUser) {
        res.status(201).json({
          status: 201,
          token: jwt.sign(newUser.user_id),
          userId: newUser.user_id,
        });
      } else {
        next(ApiError.badRequest("Client Error"));
      }
    } catch (error) {
      next(ApiError.internal(error.message));
    }
  }

  async LOGIN(req, res, next) {
    try {
      let user = await model.LOGIN(req.body);

      if (user) {
        res.status(200).json({
          status: 200,
          token: jwt.sign(user.user_id),
          userId: user.user_id,
        });
      } else {
        next(ApiError.unauthorized("Wrong username or password"));
      }
    } catch (error) {
      next(ApiError.internal(error.message));
    }
  }

  async INFO(req, res, next) {
    try {
      let info = await model.ADD_INFO(req.body, req.userId);
      if (info) {
        res.status(201).json({
          status: 201,
          message: "User information added successfully",
          data: info,
        });
      } else {
        next(ApiError.badRequest("Client Error"));
      }

    } catch (error) {
      console.log(error);
      next(ApiError.internal(error.message));
    }
  }
}

export default new UsersController();

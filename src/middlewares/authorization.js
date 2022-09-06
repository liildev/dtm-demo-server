import ApiError from "../error/api.error.js";
import jwt from "../utils/jwt.generator.js";

export default (req, res, next) => {
  try {
    let { token } = req.headers;

    if (!token) {
      return next(ApiError.unauthorized("Not Authorize"));
    }

    let user_id = jwt.verify(token);

    req.userId = user_id;

    return next();
  } catch (error) {
    next(ApiError.internal("Server Error"));
  }
};

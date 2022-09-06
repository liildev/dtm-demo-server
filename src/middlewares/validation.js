import ApiError from "../error/api.error.js";

export default (req, res, next) => {
  let { fullName, emailOrPhone, userName, region, gender, password } = req.body;

  if (req.url == "/registration") {
    if (
      ![fullName, emailOrPhone, userName, region, gender, password].every(
        Boolean
      )
    ) {
      return next(ApiError.forbidden("Missing credentials"));
    }
  }

  if (req.url == "/login") {
    if (![userName, password].every(Boolean)) {
      return next(ApiError.forbidden("Missing credentials"));
    }
  }

  return next();
};

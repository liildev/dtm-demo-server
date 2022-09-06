import ApiError from "../error/api.error.js";

export default (err, req, res, next) => {
  if (err instanceof ApiError) {
    console.log(err);
    return res
      .status(err.status)
      .json({ status: err.status, message: err.message });
  }

  res.status(err.status).json({
    status: err.status,
    message: "An unexpected error",
  });

  // process.exit();
};

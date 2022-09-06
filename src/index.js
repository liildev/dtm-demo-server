import express from "express";
import cors from "cors";
import module from "./modules/index.js";
import resultRouter from "./modules/results/router.js";
import errorHandling from "./middlewares/error.handling.middleware.js";

const server = express();

server.use(express.json());
server.use(express.urlencoded({ extended: true }));
server.use(cors());

server.use("/api", module);
server.use("/api", resultRouter);


// Error processing
server.use(errorHandling);

server.listen(process.env.PORT || 5000, () =>
  console.log(`*${process.env.PORT}`)
);

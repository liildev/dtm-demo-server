import { Router } from "express";
import usersRouter from "./users/router.js";
import subjectsRouter from "./subjects/router.js";
import univerRouter from "./universities/router.js";
import testsRouter from "./tests/router.js";
import authorization from '../middlewares/authorization.js'
import validation from "../middlewares/validation.js";

const router = Router();

router.use("/users", validation, usersRouter);
router.use("/subjects", subjectsRouter);
router.use("/universities", univerRouter);
router.use("/tests", authorization, testsRouter);



export default router;

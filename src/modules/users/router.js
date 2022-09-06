import { Router } from "express";
import controller from "./controller.js";
import authorization from "../../middlewares/authorization.js";
const router = Router();

router.post("/registration", controller.REGISTER);
router.post("/login", controller.LOGIN);
router.post("/info", authorization, controller.INFO);

export default router;

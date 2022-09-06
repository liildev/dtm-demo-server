import { Router } from "express";
import controller from "./controller.js";

const router = Router();

router.route("/")
    .get(controller.GET)
    .post(controller.CHECK);

export default router;

import { Router } from "express";
import controller from "./controller.js";

const router = Router();

router.get("/", controller.GET);
router.get("/:id", controller.GET);


export default router;

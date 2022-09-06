import { Router } from "express";
import controller from "./controller.js";

const router = Router();

router.get("/results", controller.GET);
router.get("/results/:id", controller.GET);
router.get("/result", controller.GET);


export default router;

import express from "express";
import cors from "cors";
import module from "./modules/index.js";
import resultRouter from "./modules/results/router.js";
import errorHandling from "./middlewares/error.handling.middleware.js";

const app = express();

const PORT = process.env.PORT || 5000;

app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.use("/api", module);
app.use("/api", resultRouter);

// Error processing
app.use(errorHandling);

app.listen(PORT, () => console.log(`*${PORT}`));

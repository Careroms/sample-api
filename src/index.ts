import express, { Request, Response } from "express";
import * as dotenv from "dotenv";
import path from 'path';
import { fileURLToPath } from "url";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const app = express();
const port = process.env.PORT || 3000;

dotenv.config({ path: __dirname +'/.env'});

app.get("/", (res: Response) => {
  res.json({ message: "healthy"})
});

app.get("/sample-api", (req: Request, res: Response) => {
  res.json({ message: "Welcome to the Express + Typescript Server!"})
});

app.listen(port, () => {
  console.log(`The server is running at http://localhost:${port}`);
})
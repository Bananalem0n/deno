// deno-lint-ignore-file
import express from "npm:express@4.21.1";
import "jsr:@std/dotenv/load";

const app = express();

app.get("/", async (req, res) => {
  res.send("Welcome to the Deno Website!");
});

app.get("/:name", async (req, res) => {
  res.send(`Hello ${req.params.name}`);
});

app.listen(Deno.env.get("PORT"));

FROM denoland/deno:latest

ENV PORT=3000

EXPOSE $PORT

WORKDIR /app

# These steps will be re-run upon each file change in your working directory:
COPY . .

CMD ["deno", "run", "start"]
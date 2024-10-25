FROM denoland/deno:latest

ENV PORT=3000

EXPOSE $PORT

WORKDIR /app

COPY . .

CMD ["deno", "run", "start"]
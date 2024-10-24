FROM denoland/deno:2.0.2

ENV PORT=3000

EXPOSE 3000

WORKDIR /app
COPY deps.ts .
RUN deno install --entrypoint deps.ts

COPY . .
RUN deno cache main.ts
CMD ["run", "--allow-net", "main.ts"]
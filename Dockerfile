FROM node:22-bookworm-slim
WORKDIR /app
ENV NODE_ENV=production
COPY . .
RUN mkdir -p /app/data
EXPOSE 3939
CMD ["node", "server.mjs"]

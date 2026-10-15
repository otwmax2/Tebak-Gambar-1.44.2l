FROM node:22-bookworm-slim
RUN npm install --global npm@11.6.0
WORKDIR /app/bot
COPY bot/package.json bot/package-lock.json ./
RUN npm ci
COPY bot/ ./
COPY audit/decrypted-levels/images/ /app/audit/decrypted-levels/images/
COPY resources/res/drawable/level_*.png /app/resources/res/drawable/
COPY resources/res/raw/*.ogg /app/resources/res/raw/
RUN npm run build && npm prune --omit=dev && mkdir -p runtime && chmod 700 runtime && chown -R node:node /app
USER node
ENV NODE_ENV=production
CMD ["node", "dist/src/index.js"]

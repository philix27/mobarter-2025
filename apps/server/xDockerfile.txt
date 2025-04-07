
FROM node:20-alpine AS builder

ENV NODE_ENV build

# Install PNPM globally
# RUN npm install -g pnpm

USER node
WORKDIR /home/node

COPY package.json package-lock.json ./
RUN npm install

COPY --chown=node:node . .
RUN npx prisma generate \
    && npm run build \
    && npm prune --omit=dev
    
# && npm prune --omit=dev
# ---

FROM node:20-alpine

ENV NODE_ENV production

USER node
WORKDIR /home/node

COPY --from=builder --chown=node:node /home/node/package*.json ./
COPY --from=builder --chown=node:node /home/node/node_modules/ ./node_modules/
COPY --from=builder --chown=node:node /home/node/dist/ ./dist/

CMD ["node", "dist/server.js"]
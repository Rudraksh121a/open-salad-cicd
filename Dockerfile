FROM node:22-alpine AS builder

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .
RUN npm run build   # Next.js generates .next/

# Production image
FROM node:22-alpine AS production

WORKDIR /app
ENV NODE_ENV=production

COPY --from=builder /app/package*.json ./
RUN npm install --omit=dev

# Copy needed Next.js build output
COPY --from=builder /app/.next ./.next
COPY --from=builder /app/public ./public
COPY --from=builder /app/node_modules ./node_modules

EXPOSE 3000

CMD ["npm", "start"]

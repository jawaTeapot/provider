FROM node:18-alpine as build

WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn install

COPY . .

ARG NUXT_API_URL
ENV NUXT_API_URL=${NUXT_API_URL}

ARG NUXT_STORAGE_URL
ENV NUXT_STORAGE_URL=${NUXT_STORAGE_URL}

RUN yarn run build

EXPOSE 3000

CMD ["node", "/app/.output/server/index.mjs"]

# Build stage
# FROM nginx:stable-alpine

# WORKDIR /app

# COPY nginx.conf /etc/nginx/nginx.conf

# COPY --from=build /app/.output/ ./

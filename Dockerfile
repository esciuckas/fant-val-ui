# Setup inspired by https://mherman.org/blog/dockerizing-a-react-app/

FROM node:17.5.0-alpine AS app-base
WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH
COPY package.json package-lock.json ./
# COPY app/spec ./spec
# COPY app/src ./src

# Add --silent after each install to disable messages. This will also not display errors.
RUN npm install
RUN npm install react-scripts@5.0.0 -g

COPY . ./

CMD ["npm", "start"]

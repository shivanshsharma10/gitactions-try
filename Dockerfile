FROM node:20-alpine

WORKDIR /app

# 1️⃣ Copy dependency manifests FIRST
COPY package*.json ./

# 2️⃣ Install dependencies INSIDE the image
RUN npm install --production

# 3️⃣ Copy the rest of the source code
COPY . .

EXPOSE 8080

CMD ["node", "index.js"]

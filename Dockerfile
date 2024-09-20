FROM node:slim

WORKDIR /app

COPY . .

EXPOSE 45670

RUN apt update -y &&\
    chmod +x index.js &&\
    npm install 
    
CMD ["node", "index.js"]

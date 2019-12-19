FROM node:12.5.0


RUN apt update && apt install git -y
RUN git clone https://github.com/sasathornari/service_gel.git /usr/src/app

# Set working directory
WORKDIR /usr/src/app

RUN npm install

# External port 
EXPOSE 3005

CMD ["node", "build/index.js"]


# FROM python:3.10-alpine3.20

# WORKDIR /app

# COPY  . /app
# RUN pip install 

# COPY . .

# CMD [ "python", "./your-daemon-or-script.py" ]

# FROM node:slim
# WORKDIR /app
# COPY . /app
# RUN npm install
# EXPOSE 3000
# CMD node index.js

FROM node:20

RUN npm install -g nodemon

WORKDIR /index

COPY . /index

RUN npm install

EXPOSE 3004

CMD ["npm","run","dev"]







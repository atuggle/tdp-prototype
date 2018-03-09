FROM node:8-alpine

RUN mkdir /code
WORKDIR /code

ADD package.json .
RUN npm install

ADD . .

EXPOSE 3000

ENV HOST=0.0.0.0
CMD npm start

# docker build . -t tdp-prototype
# docker run -p "3000:3000" tdp-prototype

# Its using this ip address: http://192.168.99.100:3000/


# docker run -v $PWD:/project atuggle/tdp-prototype:last
# may or may not need double quotes around "${PWD}:/project" 
FROM node:19-alpine

COPY package.json package.json 
RUN npm install
ADD src/ src/
ADD public/ public/

EXPOSE 3000
CMD ["npm", "start"]
FROM node:Its-alpine
ENV NODE_ENV=production
WORKDIR /interactiveO_voting_app.html/voting app
copy ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]
RUN npm install --production --silent && mv node_modules ../
copy . .
EXPOSE 3000
RUN chown -R node /interactiveO_voting_app/interactiveO_voting app
USER node
CMD ["npm", "start"]
ADD source dest

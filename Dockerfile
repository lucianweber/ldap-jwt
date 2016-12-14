# Example Docker Usage:
#   docker build -t ldap-jwt .
#   docker run -p 3000:3000 --rm -it -v "$(pwd)/config/config.test.json:/usr/src/app/config/config.json" ldap-jwt

FROM node:6.9.2

ENV LDAPJWT_BASE_DIR="/usr/src/app"
EXPOSE 3000

WORKDIR "${LDAPJWT_BASE_DIR}"

# Load dependencies to optimize the build cache
COPY package.json ./
RUN npm install

#Copy code
COPY . ./

CMD [ "npm", "start" ]

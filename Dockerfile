FROM node:12-alpine
ENV TZ="Asia/Shanghai"
WORKDIR /yapi/vendors
COPY . /yapi/vendors/
RUN apk add --no-cache wget python make && cd /yapi/vendors && npm install --production --registry https://registry.npm.taobao.org

EXPOSE 3000
ENTRYPOINT ["node"]

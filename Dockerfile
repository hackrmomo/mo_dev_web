FROM node:12.8.0-alpine

ENV COMPlus_EnableDiagnostics=0
WORKDIR /usr/share/mo_dev_web

EXPOSE 5002

RUN yarn build
COPY ./build /usr/share/mo_dev_web
RUN cd /usr/share/mo_dev_web
RUN yarn global add serve

CMD ["serve", "-s", "-l", "5002", "."]

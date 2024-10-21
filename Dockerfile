FROM node:20
WORKDIR /app
RUN git clone https://github.com/supalerk-ar66/backend-endpoint.git /app
RUN git pull
RUN npm install
COPY ./server.key /app
COPY ./server.crt /app
EXPOSE 8100 8101
CMD ["node", "webreport-api-https"]
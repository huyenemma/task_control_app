FROM denoland/deno:alpine-1.29.2

EXPOSE 7777

COPY deps.js .

RUN deno cache deps.js

COPY . . 

CMD [ "run", "--allow-net", "--allow-env", "--allow-read" ,"--watch", "--unstable", "app.js" ]
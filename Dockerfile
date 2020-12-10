FROM nginx:latest

RUN rm /etc/nginx/nginx.conf
COPY nginx.conf /etc/nginx/
RUN rm /etc/nginx/conf.d/default.conf
# RUN mkdir ./build
# ADD ../chord_walk_front_react/build ./build
ADD ./build/ /etc/nginx/build
ADD project_conf/ /etc/nginx/conf.d/
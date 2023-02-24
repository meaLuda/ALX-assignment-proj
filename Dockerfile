# get the base image
FROM ruby:3.1.3-slim-buster

# run updates 
RUN apt-get update -qq \
&& apt-get install -y 

ADD . /app

WORKDIR /app


RUN bundle install

EXPOSE 3000

CMD ["bash"]
# get the base image
FROM ruby:3.1.3-slim-buster

# throw errors if Gemfile has been modified since Gemfile.lock
RUN apk add --update --no-cache \
      binutils-gold \
      build-base \
      curl \
      file \
      g++ \
      gcc \
      git \
      less \
      libstdc++ \
      libffi-dev \
      libc-dev \ 
      linux-headers \
      libxml2-dev \
      libxslt-dev \
      libgcrypt-dev \
      make \
      netcat-openbsd \
      nodejs \
      openssl \
      pkgconfig \
      postgresql-dev \
      python \
      tzdata \
      yarn


RUN gem install bundler -v  2.4.7
RUN bundle config build.nokogiri --use-system-libraries
RUN bundle check || bundle install

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . ./ 

RUN bundle install

EXPOSE 3000

CMD ["bash"]
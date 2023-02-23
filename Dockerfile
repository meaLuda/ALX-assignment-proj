# Dockerfile

# Use the official Ruby image as the parent image
FROM ruby:7.0.0

# Set the working directory to /football-matches-app
WORKDIR /football-matches-app

# Copy the Gemfile and Gemfile.lock into the container
COPY Gemfile Gemfile.lock ./

# Install the required gems in the container
RUN bundle install

# Copy the rest of the application code into the container
COPY . .

# Start the Rails server
CMD ["rails", "server", "-b", "0.0.0.0"]
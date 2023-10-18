# Use an official Ruby runtime as a parent image
FROM ruby:alpine3.18

# Set the working directory in the container
WORKDIR /app

# Copy the application code into the container
COPY . /app

# Install any required gems
RUN bundle install

# Specify the command to run when the container starts
CMD ["ruby", "app.rb"]
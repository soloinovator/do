# Echo Server
Echos an http requests with an additional `echoed` field.

# Setup
Run `bundle install` from the root directory.

# Tests
Run `rspec` from the root directory.

# Running
Run `puma` from the root directory.

# Dockerized
To build the docker container: `docker build -t echo:latest .`

To run it inside docker: `docker run -p 3000:3000 -p 9393:9393 echo:latest`


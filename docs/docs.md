# Architecture
The app consists of Application Server: [puma](https://puma.io) with 2 workers and 5 threads for each worker.
This way the server can handle multiple requests easily.

The app server looks for `config.ru` that loads the API from the API namespace. and this is the endpoint for our app.

# APIs
There's 3 endpoints exposts

## POST /api/echo
takes a post request and return a response with an additional `echoed` field.

## PUT /api/echo
same as post, takes a put request and return a response with an additional `echoed` field.

## GET /
returns an OK as a response indicating the server is running correctly.

# DB
Currently there are no databases in place with.

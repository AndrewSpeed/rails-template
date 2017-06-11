# Rails API Template

A base template to get started with a Rails 5 API. Includes the following:
 - A rails web server and Postgres database container using docker-compose
 - A .ruby-version file for rvm
 - A .ruby-gemset file to namespace dependencies

## Provided dependencies

The following dependencies are installed by default:
 - rails
 - pg
 - rspec
 - rspec-rails
 - rubocop

## Docker containers

A `docker-compose.yml` file is included which contains:
 - A rails webserver for development, named `webserver`
 - A postgresql database, named `database`

To start the containers, run `docker-compose up` which will build the webserver container and link it to the database.

Both containers are configured using environment files located in the `env` directory.
The `database` container uses the `database.env` file, and webserver uses both `database.env` and `web.env`.

`database.env` contains:
 - The user which should own the database _(default: postgres)_
 - The user's password _(default: mysecretpassword)_
 - The name of the database _(default: rails\_db)_

`web.env` contains:
 - The name of the database host to connect to _(default: db)_
 - The port on which postgresql accepts incoming connections _(default: 5432)_

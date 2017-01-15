# Allo ?

For this project, we use:
- Ruby On Rails 5.0
- SQLite in dev
- reCaptcha

Tools you need:
- Ruby and ruby dev
- Bundler

## Getting started

Install gem 

`bundle install`

Apply database migration 

`rails db:migrate`

And start server

`rails s`

Add a reCaptcha site key and secret key in `.env` file. 
An example is avalaible in `.env.sample`.
You can create your key [here](https://www.google.com/recaptcha/admin)
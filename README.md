[![Build Status](https://travis-ci.com/BeccaHyland/noteful.svg?branch=master)](https://travis-ci.com/BeccaHyland/noteful) [![Waffle.io - Columns and their card count](https://badge.waffle.io/BeccaHyland/noteful.svg?columns=all)](https://waffle.io/BeccaHyland/noteful)

# Noteful
Noteful is a RESTful AWS API with a Rails front-end to retrieve/display data from, and post entries to, AWS API Gateway.
* database: AWS Dynamo DB
* Rails version: 5.2.2
* Ruby version: 2.4.1

### Iteration 2 underway
Visit Noteful deployed on Heroku [here](https://stark-peak-61498.herokuapp.com/)

### Style: Before and After
<img width="1018" alt="screen shot 2019-01-08 at 10 43 17 pm" src="https://user-images.githubusercontent.com/39714935/50879090-dd47c080-1396-11e9-8bfd-8db1ceb899ef.png">

### Original Requests from Product Owner (Iteration 1)
1) Add New Note - functional
2) Display All Notes - functional
3) Filter Notes FE Prototype (less performant) - functional
4) Filter Notes on API (more performant) - draft lambda (see files)

### Performance Improvements in Development (Iteration 2)
* implement Continuous Integration - complete
* re-style application - complete
* increase test coverage to 95%+ - complete
* filter by date newest to oldest - in development
* filter Notes at API layer instead of within application - in development

Check out the recent API Gateway deployment history:
<img width="1440" alt="screen shot 2019-01-18 at 10 08 00 am" src="https://user-images.githubusercontent.com/39714935/51401909-3e933080-1b09-11e9-9d31-2dfdd4236a96.png">

#### How to Use
To run a copy of Noteful locally:
1. Clone this repo
2. On command line, first: `bundle install`
3. Then `rake db:create` (Noteful doesn't use a local database, but this will remove the db error)
4. Run test suite: `rspec`
5. To run the app locally: `rails s`, then navigate in browser to `localhost:3000`

#### Rails API service model
Here is Noteful's Rails service that contacts API Gateway:
<img width="1409" alt="screen shot 2018-12-28 at 5 42 23 pm" src="https://user-images.githubusercontent.com/39714935/50530045-18f5a700-0ac8-11e9-89f7-99bb1b2e61c1.png">


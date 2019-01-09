# Noteful
Noteful is a RESTful AWS API with a Rails front-end to retrieve data from, and post entries to, AWS API Gateway.
* database: AWS Dynamo DB
* Rails version: 5.2.2
* Ruby version: 2.4.1

Visit Noteful deployed on Heroku [here](https://stark-peak-61498.herokuapp.com/)

### Style: Before and After
<img width="1018" alt="screen shot 2019-01-08 at 10 43 17 pm" src="https://user-images.githubusercontent.com/39714935/50879090-dd47c080-1396-11e9-8bfd-8db1ceb899ef.png">

### Status of requests from Product Owner (Iteration 1)
1) Add New Note - functional
2) Display All Notes - functional
3) Filter Notes FE Prototype (less performant) - functional
4) Filter Notes on API (more performant) - draft lambda (see files)

### Issues Resolved (Iteration 2)
* implement Continuous Integration
* increase test coverage from 50% to 90%+
* re-style application
* filter by date newest to oldest

### Known Issues
Below are areas in development:
* BE database result filter (see draft solution above)
* restrictions on AWS IAM role (security)

#### How to Use
To run a copy of Noteful locally:
1. Clone this repo
2. On command line, first: `bundle install`
3. Then `rake db:create` (Noteful doesn't use a local database, but this will remove the db error)
4. Run test suite: `rspec`
5. To run the app locally: `rails s`, then navigate in browser to `localhost:3000`

#### Rails API service model
Check out Noteful's Rails service that contacts API Gateway:
<img width="1409" alt="screen shot 2018-12-28 at 5 42 23 pm" src="https://user-images.githubusercontent.com/39714935/50530045-18f5a700-0ac8-11e9-89f7-99bb1b2e61c1.png">


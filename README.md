# Noteful
Noteful is a RESTful AWS API with a Rails front-end to retrieve data from, and post entries to, AWS API Gateway.
* database: AWS Dynamo DB
* Rails version: 5.2.2
* Ruby version: 2.4.1

### Status of requests from Product Owner
1) Add New Note - functional
2) Display All Notes - functional
3) Filter Notes FE Prototype (less performant) - functional
4) Filter Notes on API (more performant) - awaiting bug fix (see draft AWS Lambda below)

<img width="1438" alt="screen shot 2018-12-28 at 3 58 41 pm" src="https://user-images.githubusercontent.com/39714935/50528223-fc06a700-0aba-11e9-9d09-9e5fdaefe228.png">

Visit Noteful deployed on Heroku [here](https://stark-peak-61498.herokuapp.com/)

### Video - Check out Noteful!
Video 1: Filtering and filling out "Add New Note" Form
![](https://media.giphy.com/media/2zZlWKzrNqXLroQxOH/giphy.gif)

Video 2: New Note added, API Gateway deploy history, visit app on Heroku to see new Note there
![](https://media.giphy.com/media/dK0DhJae4WTV8sGajv/giphy.gif)

### Known Issues
Below are areas in development:
* BE database result filter (see draft solution above)
* restrictions on AWS IAM role (security)
* styling
* filter by date
* new Note maxlength (250) for description


#### How to Use
To run a copy of Noteful locally:
1. Clone this repo
2. On command line, first: `bundle install`
3. Then `rake db:create` (Noteful doesn't use a local database, but this will remove the db error)
4. Run test suite: `rspec`
5. To run the app locally: `rails s`, then navigate in browser to `localhost:3000`

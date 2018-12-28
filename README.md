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
Video 1: Filtering all notes by Tag and filling out "Add New Note" form, link: https://giphy.com/gifs/2zZlWKzrNqXLroQxOH
![](https://media.giphy.com/media/2zZlWKzrNqXLroQxOH/giphy.gif)

Video 2: New Note added, API Gateway deploy history, visit app on Heroku to see new Note there, link: http://www.giphy.com/gifs/dK0DhJae4WTV8sGajv
![](https://media.giphy.com/media/dK0DhJae4WTV8sGajv/giphy.gif)

### Known Issues
Below are areas in development:
* BE database result filter (see draft solution above)
* restrictions on AWS IAM role (security)
* filter by date
* new Note maxlength (250) for description


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


# ALX - Project Assignment: 2023

## By: munyalamea@gmail.com

## Project: 
<p>View Football Team Game Standings this season and get Alerts and Notifications later on on your teams favorite via SMS and Email</p>

## Description: 

<p>
This is a Ruby On Rails project web app that enables users to see English Premier League team Standings
that are ongoing from an API providing game matches that they would also be able to like teams that they would love to get their results on. 
It will later on enable users to subscribe to notifications via SMS and Email.</p>

## Installation:
<p>
Built For us busy folks who would like to get notifications on the results of the games we love, 
but don't have time to check the results, this app will enable you to subscribe to notifications via SMS and Email.
</p>

# Features:
<p>1. Users can view teams and their standings</p>
<p>2. Users can like teams they want to get notification on</p>

## Technologies Used:
<p>1. Ruby on Rails</p>
<p>2. Bootstrap</p>
<p>3. API Connection using RapidAPI: https://rapidapi.com/heisenbug/api/premier-league-live-scores</p>
<p>4. Javascript</p>
<p>5. Docker Containerisation</p>


## Documentation:

### Local Setup

1. Clone Repo:

2. Run the following command to start the server: (windows)

```Ruby
$rails bin/rails server
```

3. If successful, you should see the following:

```Ruby
* Listening on http://127.0.0.1:3000
```

## HomePage:
<img
  src="./docs_image/a.png"
  alt="Alt text"
  title="Optional title"
  style="display: inline-block; margin: 0 auto; max-width: 300px">
<img
  src="./docs_image/b.png"
  alt="Alt text"
  title="Optional title"
  style="display: inline-block; margin: 0 auto; max-width: 300px">
<img
  src="./docs_image/c.png"
  alt="Alt text"
  title="Optional title"
  style="display: inline-block; margin: 0 auto; max-width: 300px">
<img
  src="./docs_image/d.png"
  alt="Alt text"
  title="Optional title"
  style="display: inline-block; margin: 0 auto; max-width: 300px">

## Docker Setup:

## Windows:

```R
$ docker-compose up -d

```

Once the container is up and running, you can access the app on your browser at http://localhost:3000


<p>If you encounter an error ???ActiveRecord::NoDatabaseError??? then run the following command to create the database.</p>

```R
$ docker-compose run web rake db:create
```

<p>Perform Migration</p>

```R
$ docker-compose exec app bundle exec rake db:setup db:migrate
```
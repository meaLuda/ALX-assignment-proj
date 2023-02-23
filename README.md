# ALX - Project Assignment: 2/22/2023

## By: munyalamea@gmail.com

## Project: 
<p>View Football Team Game Standings and get Alerts and Notifications later on on your teams favorite via SMS and Email</p>

## Description: 

<p>This is a Ruby On Rails project web app that enables to English Premier League Standings that are ongoing from an API providing game matches that they would also be able to like games that they would love to get their results on. It will later on enable users to subscribe to notifications via SMS and Email.</p>

## Installation:
<p>For us busy folks who would like to get notifications on the results of the games we love, but don't have time to check the results, this app will enable you to subscribe to notifications via SMS and Email.
</p>

# Features:
<p>1. Users can view ongoing matches</p>
<p>2. Users can like games they want to get notification on</p>

## Technologies Used:
<p>1. Ruby on Rails</p>
<p>2. Bootstrap</p>
<p>3. API Connection using RapidAPI: https://rapidapi.com/heisenbug/api/premier-league-live-scores</p>
<p>4. Javascript</p>
<p>5. Docker Containerisation</p>


## Documentation:

### Local Setup

1. Setup the project locally by following the steps below:

```Ruby
$rails new football-matches-app --api  # optional added command: -d postgresql
```

2. Run check on windows

```Ruby
$rails bin/rails server
```

3. If successful, you should see the following:

```Ruby
* Listening on http://127.0.0.1:3000
```

4. Set up Models with Relationships
We'll create two models: Match and Like. A Match has many Likes, and a Like belongs to a Match.

To create the Match model, run the following command:
    
```Ruby
$rails generate model Match home_team:string away_team:string match_time:datetime
```

We will then create a Like model that references the match its from:
    
```Ruby
$rails generate model Like match:references
```


## Documentation: Docker Setup
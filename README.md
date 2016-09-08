## System Check Review Three: HTTP & Sinatra

_Much credit should be given to former EEs David Rodriguez Fuentes & Elise Fitzgerald for this repo!_

### Learning Goals
* Generate a dynamic web page in response to a `GET` request.
* Persist information from a user submitted via a `POST` request.
* Implement code based on acceptance tests.

### Building a Favorites List App

Building a list keeping app with Sinatra with dynamic web pages and saves information to a file.

Our app should satisfy the following requirements:

* Visiting `GET /favorites` should display a list of our favorite things as well as a form for adding a new item to the list.
* Visiting `GET /` should redirect the user to `GET /favorites`.
* The "thing" listed must be in html list element.
* The form requires a favorite thing to be specified.
* The list of favorite things is read from the `favorites_list.csv` file which stores each item on a new line.
* The form submits to `POST /favorites` which saves the new item to the `favorites_list.csv` file.
* Submitting an empty form does not modify the `favorites_list.csv` file.

## To use this as a practice:

* Run this in your terminal: `git clone https://github.com/nwalberts/favorite_thangs`
* Then go into the directory `cd favorite-thangs`
* `bundle` then `rspec`
* Work through the test errors

### System Check Review Suggestions

[D-Rod's System Check Review Gitst](https://gist.github.com/davidrf/25b22c189a2efab0091b9d1ac7a8a16d)

Edit: Recommended Lessons

[News Aggregator](https://learn.launchacademy.com/lessons/news-aggregator)

[Acceptance Testing Pickled Beets](https://learn.launchacademy.com/teams/admins/curricula/onsite/lesson_groups/on_campus:_week_3/lessons/acceptance-testing-pickled-beets)

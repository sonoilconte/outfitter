# Outfitter #

Live at <a>https://outfitter-dev.herokuapp.com/</a>
![Create Outfit Screenshot](https://github.com/sonoilconte/outfitter/blob/master/app/assets/images/gh_readme_ss.png?raw=true)

## Overview ##
Outfitter is an app for creating a digital closet and combining clothing items into outfits.

## User Stories Implemented ##

  * Add a new clothing item
  * View an index of all clothing items (the "Closet")
  * View an index of all outfits
  * View / Edit / Delete a clothing item
  * Create a new outfit from clothing items
  * View / Delete an outfit
  * Edit name and tag attributes for an outfit

## Technologies ##
  * Ruby on Rails
  * JavaScript
  * jQuery
  * Materialize CSS

## To Do ##
  * Users and sessions
  * User can edit an outfit swapping in different items, similar to creating an outfit
  * View showing outfits from multiple users
  * Many to many relationship between users and outfits. E.g. a user can save another user's outfit to their account.

## Local Setup ##
  1. Clone and cd into repository
  2. Run `bundle install`
  3. If you would like to seed the database with clothes, run `rails db:reset`
  3. Run `bundle exec rails s`
  4. Open up a browser and go to http://localhost:3000/

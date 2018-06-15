# Project 2 - Campsite Findr
---
[Link to Campsite Findr](https://enigmatic-ridge-61588.herokuapp.com/users/1)

URL: <https://enigmatic-ridge-61588.herokuapp.com/>

![Screenshot 1](https://i.imgur.com/SER2yIV.png
"Screenshot_1")
![Screenshot 2](https://i.imgur.com/n8gREj7.png
"Screenshot_2")
![Screenshot 3](https://i.imgur.com/OK7TlUj.png
"Screenshot_3")

## Introduction to Campsite Findr
This is a crowd-sourced app built to share campsites from all over the world. Once registered and logged in, users can submit campsites information including images and also leave a review with a rating. 

## Technologies used

* Ruby on Rails version 2.4.2
* Postgresql
* Bcrypt
* Bootstrap HTML 
* CSS/SASS
* Images from <https://unsplash.com>
* Google Font
* Font Awesome

## Installation/Startup Instructions

1. Download this directory from Github to a local directory on your computer.
2. In your terminal `cd` into this project folder.
3. Make sure you are in the correct place by typing `pwd`.
4. Then type `bundle` to install the Ruby gems needed for this app.
5. If you do not have Postgresql, download it from their website: <https://www.postgresql.org/download/>
6. Run Postgresql server
7. Open a new terminal tab `CMD + t`
8. In the new tab, type `rails run db:migrate` to migrate the app's tables.
9. Then type `rails s` to initiate your local server
10. Open a new browser and type `localhost:3000` - if you are getting an error make sure you don't have any other local servers running in your terminal.
11. Start sharing campsites and reviews!

## Wireframe

![Screenshot 4](https://i.imgur.com/N9wTItU.png
"Screenshot_4")
![Screenshot 5](https://i.imgur.com/OnQCSme.png
"Screenshot_5")

## ERD (entity relationship diagram)
![Screenshot_6](https://i.imgur.com/hUvVM1y.png?1 "Screenshot_6")

##Issues Faced

* My main issue was getting all my redirects to work properly. I had to set specific methods to request the  destination url, the referrer, save cookie sessions, delete the cookie after, render a page, etc. It was very confusing.

* I also got obsessed with Bootstrap and CSS and spent too much time and energy on tiny little details. 

## Backlog

* Fix the footer; does not fix to bottom on pages with less content. 
* When a user signs up, instead of redirecting to the login page, I would like to the user to be logged in automatically when they sign up and be redirected to their profile page. 
* Add an edit button in the user's profile. 
* Add search capability in the nav bar. 

### Trello Board
[Link to Project 2 Trello Board](https://trello.com/b/IOqGaztm/wdi-project-2)





























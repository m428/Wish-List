# Wish List

Wish List is an organizational tracking tool that allows users to track the things they love and manage gift giving for any occasion.
View the app on Heroku [HERE](https://radiant-shore-84281.herokuapp.com/).

###Technologies:
* Built with Ruby on Rails
* Database using PostgreSQL
* Bootstrap

###Models
* **User:**
 - Full CRUD
 - Must be authenticated to access create and browse lists
 - Has many items
 - Users may be searched by name, email, or username

* **Item:**
 - full CRUD
 - belongs to one user
 - Items may be searched by title, cost, category, or seller


###User Stories

A user of Wish List is able to:
  * Log in or Sign up
Once logged in an authenticated:
  * Add an item to his or her Wish List
  * Edit items on his or her Wish List
  * Remove items from his or her Wish List
  * Search items on his or her Wish List
  * Browse the Wish Lists of other users
  * Search for other users
  * Edit his or her account information
  * Log out

###Screenshots
![Welcome](http://imgur.com/fpXYWG2.png)
![Signup](http://imgur.com/ooGEKk3.png)
![Home](http://imgur.com/0nLJ8gl.png)
![Wish List](http://imgur.com/xGofMYe.png)
![User Index](http://imgur.com/A22AIkG.png)


#### Copyright notice:

The media and information used in this app is for educational purposes. Project created by Mala Nimalasuriya.

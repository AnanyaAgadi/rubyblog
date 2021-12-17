# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version - 2.5.3
* Rails version - 5.2.6

database used in development - sqlite3

database used in production - postgreSQL


rails g model post title:string date:datetime author:string description:text

Rails g  controller posts

Rails g controller page index

Post.create(title:”Post 1”, date:16/12/2021, author: “ Mina J”, description: “Simple handbook”)

Rails g scaffold user name:string email:string 


rails generate model comment user:references body:text
rating:integer post:references


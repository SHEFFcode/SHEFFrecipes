#Readme for Recipes Manager

##Purpose

Recipe manager is a website that tracks awesome recipes from various Chefs.

##Testing Specs for Recipes:

* name: string
    * Must be present
    * Must be between 5 characters and 100 characters
* summary: text
    * Must be present
    * Must be between 10 chracters and 150 characters
* description: text
    * Must be present
    * Must be between 20 charactes and 100 characters
* chef_id: number
    * Must be present

##Testing Specs for Chefs:

* chef_name: string
    * Must be present
    * Must be between 3 and 40 characters in length
* email: string
    * Must be present
    * Must be unique
    * Must be valid
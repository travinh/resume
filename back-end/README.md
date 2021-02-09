# README

This is the database for Vinh's resume. It contains Vinh's personal information to used for Vinh's website.

This api using Ruby on Rails with Postgresql for database. 

Here is the structure of json file:

{
  "main": {
    "name":"",
    "description":"",
    "image":"",
    "bio":"",
    "contactmessage":"",
    "email": "",
    "phone": "",
    "github":"",
    "project":"",
    "address":{
      "street":"",
      "city":"",
      "state":"",
      "zip": ""
    },
    "website": "",
    "resumedownload":"",
    "social":[
      {
        "name":"facebook",
        "url":"",
        "className":""
      },
      {
        "name":"linkedin",
        "url":"",
        "className":"fa fa-linkedin"
      },
      {
        "name":"github",
        "url":"",
        "className":"fa fa-github"
      }
    ]
  },
  "resume":{
    "skillmessage":"",
    "education":[
      {
        "school":"",
        "degree":"",
        "graduated":"",
        "description":""
      }
    ],
    "work":[
      {
        "company":"",
        "title":"",
        "years":"",
        "description":""
      }
    ],
    "skills":[
      {
        "name":"C++",
        "level":"70%"
      }
    ]
  },
  "portfolio":{
    "projects": [
      {
        "title":"",
        "category":"",
        "image":"",
        "url":""
      }
    ]
  }
}


### Requirements
- Make sure you have Postgresql and run it

- Need to add these 2 gems to have the structure above
gem 'fast_jsonapi'
gem "active_model_serializers", "~> 0.10.12"

Then Run: 
bundle install

### Steps:
- Generate models: address, social and main and make relationship between them in model and serializer
rails g resource address street city state zip
rails g resource social name url className main_id  
rails g resource main name description image bio contactmessage email phone github project website resumedownload address_id social_id

- Run: 
rails db:create  => create database development and test
* If they already exist, you can drop it by running: rake db:drop and create again
rails db:migrate => migrate your database

- Change controller to customize index,show,create function. Make sure you change structure to what you want to show.

- Create namspace for API and move all controller to folder API/v1 and add API::V1 for those classes

- Run: 
Rails c and add infomation for those models or Open seed file and start creating data (rails db:seed). 

Rails s to start server




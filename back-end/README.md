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
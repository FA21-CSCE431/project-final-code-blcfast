# README

## Introduction ##

Application Description

## Requirements ##

This code has been run and tested on:

* Ruby - 3.0.2p107
* Rails - 6.1.4.1
* Ruby Gems - Listed in `Gemfile`
* PostgreSQL - 13.3 
* Nodejs - v16.9.1
* Yarn - 1.22.11


## External Deps  ##

* Docker - Download latest version at https://www.docker.com/products/docker-desktop
* Heroku CLI - Download latest version at https://devcenter.heroku.com/articles/heroku-cli
* Git - Downloat latest version at https://git-scm.com/book/en/v2/Getting-Started-Installing-Git

## Installation ##

Download this code repository by using git:

 `git clone https://github.com/FA21-CSCE431/project-sprint-1-blcfast.git`


## Tests ##

An RSpec test suite is available and can be ran using:

  `rspec spec/`

## Execute Code ##

Run the following code in Powershell if using windows or the terminal using Linux/Mac

  `cd your_github_here`

  `docker run --rm -it --volume "$(pwd):/rails_app" -e DATABASE_USER=test_app -e DATABASE_PASSWORD=test_password -p 3000:3000 dmartinez05/ruby_rails_postgresql:latest`

  `cd rails_app`

Install the app

  `bundle install && rails webpacker:install && rails db:create && db:migrate`

Run the app
  `rails server --binding:0.0.0.0`

The application can be seen using a browser and navigating to http://localhost:3000/

## Environmental Variables/Files ##

No Environmentals are required 

## Deployment ##

Assuming the user has a GitHub repository where they are storing the website code, they will start at the Heroku dashboard.

They will click the button saying to create a new pipeline and connect the GitHub repository to the pipeline. They will then need to enable Review Apps and then click New App in Review App. After creating this app, Heroku will autodeploy to from the branch selected everytime it is pushed to. 

Now we will go to the Deploy tab and change the branch to deploy from its default to main if that is not what is selected. This will complete the autodeployment from Heroku so everytime a change is made to the main branch, it will deploy to the production application.


## CI/CD ##

CI stands for Continuous Integration and CD stands for Continuous Delivery.  These two principles combined allow for automation through the development of an application. The implementation of CI/CD throughout the development of our application has made development faster, easier, and safer for all of the developers on our team. 

Continuous Integration relates more towards the development of the product and how code is shared, tested, and stored in a shared repository so all of the developers on a team can have access to all of the code. This allows for much easier development of new features, bug fixes, and day to day development. We used a GitHub repository for the storage and sharing of our code. Here we were all able to safely see everyone else’s code, work on new features without ruining the final product, and have version control and continuity. 

Continuous Delivery refers to the step in the software development process of taking an application from the aforementioned repository to production. This is done for us through the use of Heroku and the set up of automated deployment. We have our production environment set up so when changes are merged into our main branch in our repository, Heroku automatically deploys a new application and the live link for our application will have our most updated changes reflected almost immediately. Heroku has been more or less flawless for our implementation and usage. It has been easy to develop and deploy using the GitHub and Heroku pipeline. 

## Support ##

Admins looking for support should first look at the application help page.
Users looking for help seek out assistance from the customer.
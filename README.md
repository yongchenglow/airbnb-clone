# AirBNB Clone

Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.

## Table of Contents

1. [Running the Application on your computer](#running-the-application-on-your-computer)
   1. [Setting up your computer](#setting-up-your-computer)
   2. [Running the project on your local machine](#running-the-project-on-your-local-machine)
2. [How is this project created](#how-is-this-project-created)
3. [License](#license)

## Running the Application on your Computer

### Setting up your computer

Go to the following [website](https://github.com/lewagon/setup) and set up your computer according to the operating system that you are using.

### Running the project on your local machine

Run the following commands to clone the repository to your local machine

```
git clone git@github.com:yongchenglow/airbnb-clone.git
cd airbnb-clone
bundle install
yarn install
rails db:create db:migrate
rails s
```

## How is the project created

### Initializing the Repository

This project is created by running the following command

```
rails new \
  --database postgresql \
  -m https://raw.githubusercontent.com/lewagon/rails-templates/master/minimal.rb \<YOUR_APP_NAME>

cd <YOUR_APP_NAME>
gh repo create
git push origin master
```

### Creating your Github Projects

For this project, we will be using Github Projects as our project management tool.

1. Go to the Github Repository that you just created
2. Select he Projects Tab
3. Create a new Projects
4. Create 5 columns [Todo, Specificaiton, Implementation, Code Review, Eureka]

### Workflow for Github Projects

1. Create a Tasks in Todo. This task should be a short description of what needs to be done.
2. Once you want to work on the task move the task to specification
3. Select the 3 dots on the card and convert the card to an issue. There is no need to write anything in the body.
4. Once the card is converted to the issue, open the issue and start to spec out the card. Edit the empty body.
5. Add a checklist of what needs to be done and any additional details or description that needs to be done
6. Select an assignee, and add a label
7. Create a branch and work on the issue
8. Create a pull request, add assignee, label and project
9. Go back to the Github Issue and link the Pull Request to the issue
10. Once you have done all of this, Move the card to implementation.
11. Once the implementation is done, push your code to the branch and put any additional details in the Merge Request.
12. Move the card to Code Review
13. Once the code passes the Code Review, merge the branch
14. Move the card to Eureka
15. Congratulations! You have completed your first issue!

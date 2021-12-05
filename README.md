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
11. Once the implementation is done, push your code to the branch and put any additional details of what is changed to the first description.
12. Move the card to Code Review (Pending)
13. Once the reviewer finished the review move it to Code Review (Done)
14. If more changes are required move the card back to implementation and repeat 11 to 13 until everthing is good
15. Once everything is completed, move the card to Eureka
16. Congratulations! You have completed your first issue!

### How to code review

This sections tells you in general how to do a simple code review using Github. I assumed you have created a merge question and your team is using the project workflow mentioned above. The most important rule for code review is that `Assignee cannot be the Code Reviewer`

1. Read the Github Issue, it should be linked to the Merge Request
2. Read the Merge Request description at the top
3. Go to the files changed tab changes should be in green, deletions should be in red
4. Review the code. [You can refer to the following as a guide on what to look out for](https://blog.palantir.com/code-review-best-practices-19e02780015f)
5. Select the plus icon beside (you can do multiple as well) for the section of code to comment on.
6. Add your comment
7. Select the Start a review button
8. Once the review is completed, move to code review (done)
9. Repeat the code review process until the code is clean.
10. The assignee of the code should be the one merging to master

## License

[GNU GENERAL PUBLIC LICENSE](./LICENSE)

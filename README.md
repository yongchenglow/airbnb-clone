# AirBNB Clone

[Visit my AirBNB Clone](https://airbnb-yongchenglow.herokuapp.com)

### Story Mapping

[Story Map](https://miro.com/app/board/uXjVOdIJ8AE=/?invite_link_id=251045537158) is done using the miro web application

### Database Schema

[Database Schema](https://dbdiagram.io/d/61acad6c8c901501c0e11416) is done using dbdiagram.io

### Wireframe

Due to time constraints a [lo-fi wireframe](https://www.figma.com/file/HXM8NutEl5Qm9NMSnRI1WM/Untitled?node-id=0%3A1) is done using figma

Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.

## Table of Contents

1. [Running the Application on your computer](#running-the-application-on-your-computer)
   1. [Setting up your computer](#setting-up-your-computer)
   2. [Running the project on your local machine](#running-the-project-on-your-local-machine)
2. [Project Workflow](#project-workflow)
3. [How to do a code review](#how-to-do-a-code-review)
4. [How is this project created](#how-is-this-project-created)
   1. [Initializing the Repository](#initializing-the-repository)
   2. [Setting up Github Projects](#setting-up-github-projects)
   3. [Setting up Github Workflows](#setting-up-github-workflows)
   4. [Setting up VSCode Extensions](#setting-up-vscode-extensions)
   5. [Setting up commit linting](#setting-up-commit-linting)
   6. [Setting up Slack and Github Integration](#setting-up-slack-and-github-integration)
5. [License](#license)

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

## Project Workflow

1. Create a Card with a short description in the Todo column.
2. Once you want to work on the task move the task to implementation.
3. Select the 3 dots on the card and convert the card to an issue. There is no need to write anything in the body.
4. Once the card is converted to the issue. A notification will be sent to the slack channel if you have set it up.
5. Open the issue and then select an assignee, and add a label
6. Edit the empty description and start to write down the specifications of the card. Sometimes it is helpful to add a checklist of what needs to be done
7. Create a branch and work on the issue
8. Once completed, create a pull request, add assignee, label. link the issue to your pull request and project. A notification will be setn to the slack channel if you have set it up. You can comment on the slack notification to get one of you partner to review it.
9. Once you have done all of this, Move the card to [code review](#how-to-do-a-code-review).
10. Once the reviewer has submitted their review, a slack notification will be sent to the group. This is to tell the owner of the pull request to either make the necessary changes or merge the branch to master.
11. You can create a thread through the slack notifications once ready for re-review
12. Once the review gives you the Looks Good to Me and approves the request. At this point in time all the Github Workflows should pass.
13. Once everything is good the Assignee Merge the branch to master and move the card to Eureka
14. Congratulations! You have completed your first issue!

## How to do a code review

This sections tells you in general how to do a simple code review using Github. I assumed you have created a merge question and your team is using the project workflow mentioned above. The most important rule for code review is that `Assignee cannot be the Code Reviewer`

1. Read the Github Issue, it should be linked to the Merge Request
2. Read the Merge Request description at the top
3. Go to the files changed tab changes should be in green, deletions should be in red
4. Review the code. [You can refer to the following as a guide on what to look out for](https://blog.palantir.com/code-review-best-practices-19e02780015f)
5. Select the plus icon beside (you can do multiple as well) for the section of code to comment on.
6. Add your comment
7. Select the Start a review button
8. Once you reviewed all the code, select the viewed file button, and the review changes button at the top and click on the submit review button. A slack notification should be sent to the channel telling the Assignee that the code has been reviewed.
9. Repeat the code review process until the code is clean.
10. The assignee of the code should be the one merging to master

## How is this project created

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

\*Note that for some of you you will have to run `git push origin main` instead of `git push origin master`

### Setting up Github Projects

For this project, we will be using Github Projects as our project management tool.

1. Go to the Github Repository that you just created
2. Select the Projects Tab
3. Create a new Projects
4. Create 4 columns [Todo, Implementation, Code Review, Eureka]

### Setting up VSCode extensions

You can setup some recommended extensions for VS code. These will include some of the recommended extensions from [here](https://betterprogramming.pub/vs-code-extensions-for-ruby-on-rails-developers-917474e03e04) and my own

```
mkdir .vscode
cd .vscode
touch extensions.json
```

Copy and paste the content from the following [file](./.vscode/extensions.json)
VS code should ask you to install some of the recommended extensions. Install and enable them.

Run the following command in the command line

Adjust your VS Code settings `code > preferences > settings`, add a `,` at the end of the file and paste the following code

```
"files.associations": {
  "*.erb": "erb"
},
"files.associations": {
  "*.erb": "erb"
},
"ruby.useBundler": true, //run non-lint commands with bundle exec
"ruby.useLanguageServer": true, // use the internal language server (see below)
"ruby.lint": {
  "rubocop": {
    "useBundler": true // enable rubocop via bundler
  },
  "reek": {
    "useBundler": true // enable reek via bundler
  }
},
"ruby.format": "rubocop" // use rubocop for formatting
"editor.bracketPairColorization.enabled": true,
"editor.defaultFormatter": "esbenp.prettier-vscode",
"editor.formatOnSave": true,
"editor.codeActionsOnSave": {
  "source.fixAll": true
},
```

If there is a yellow squigily line in your settings.json, most likely the code is repeated. Try to combine them.

### Setting up Commit Linting

```
yarn add --dev @commitlint/cli
yarn add --dev @commitlint/config-conventional
echo "module.exports = { extends: ['@commitlint/config-conventional'] };" > commitlint.config.js
yarn add husky --dev
yarn husky install
yarn husky add .husky/commit-msg 'yarn commitlint --edit $1'
touch commimtlint.config.js
```

Go to commitlint.config.js and copy and paste the following [code](./commitlint.config.js). Then run the following command.

```
npx commitlint --from HEAD~1 --to HEAD --verbose
```

You should get a commit message stating whether there are any errors or warnings. This will keep the commit messages clean. Adjust commitlint.config.js accordingly to your commit style. Add the necessary modules to ensure that your commit messages makes sense.

### Setup Github Workflow

This second will setup a github workflow, this will ensure that code merged to master branch is always compilable

```
mkdir .github
cd .github
mkdir workflows
cd workflows
touch rubyonrails.yml
```

add the following [content](./.github/workflows/rubyonrails.yml) to rubyonrails.yml

### Setting up Slack and Github Integration

The Github bot should already be added to the LeWagon Slack Channel
Create a new channel call `batch-692-{project}-{github}`

```
/invite @GitHub
/github subscribe {githubUsername}/{repositoryName} reviews
```

You will be prompt to connect to your github account and enter a code. Follow the instructions and your slack channel will be subscribed to your Github Repository. You should be receiving notifications for the following actions:

1. When you convert to issue, You will take ownership of the item
2. When you create a pull request
3. When you complete a code review
4. When you merge a pull request to master

### Setting up Heroku Integration

We will be setting up automatic deployments of the master branch once we push to master. Do take note that for your review applications, you should be using manual deployments.

To create an application

```
heroku create <APP_NAME> --region=eu

```

To do a manual deployment

```
git push heroku master
heroku run rails db:migrate

```

To setup automatic deployment please follow the [article](https://devcenter.heroku.com/articles/github-integration)

1. Login to Heroku
2. Create an application
3. Go to Deploy
4. Connect to Github
5. Select the Branch for Automatic Deployment
6. Search for the Branch
7. Select enable automatic deploys

\*Take note that you should be setting up 2 url if you are the project manager. 1 should be your final project URL, another one should be your review application URL for your merge request.

## License

[GNU GENERAL PUBLIC LICENSE](./LICENSE)

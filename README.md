# README

A small project that creates a forum where a logged in user can ask questions and other users are able to reply to them.

## Prerequisites

Before setting up the application, ensure you've got the following installed:

* Ruby version : 2.7.0
* Rails version : 7.0.3
## Setup

```
git clone https://github.com/zuhasharaz/ask-away.git
```

 In the terminal navigate to the project directory and run:

`bundle exec rake db:setup`

`bundle exec rake db:migrate`

## View website with NGROK

- To view the webiste visit the following link:

https://bit.ly/AskAwayForum

The link expires after 8 hours, so can re generate if needed.
 ## Starting the application locally

`bundle exec rails server`

 you should now be able to access the website on

http://localhost:3000

 ## Functionality

- A user that is not logged in, is able to view questions and all the answers associated.
- A user is able to login/sign up.
- A user must be logged in to be able to ask questions and create replies.
- A logged in user can ask a question.
- A logged in user can create a reply to a question.
- A logged in user can delete questions and answers.

 ## Future Improvements

 - Add Test coverage.
 - Add Pundit policy checks.
 - Add validation to users that will allow them to only delete their own questions and
   replies.
 - Allow indiviual user to have the ability to view all questions they have created.
 - Allow users to edit and update their questions and replies.
 - Improve UI


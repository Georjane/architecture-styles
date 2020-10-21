## Ruby on Rails capstone based on lifestyle articles website. Design idea by [Nelson Sakwa on Behance](https://www.behance.net/sakwadesignstudio)

> This is a real-world-like project, built with business specifications

In this project, a simple website was built with models for user, section, article, and vote with ruby on rails.
    A user can log in to the app, only by typing the username and is presented with a homepage that includes:
- A Featured article that has the highest votes
- List of all categories sorted according to their priority with an image of its most recent article
    When the user clicks the category name they can see all articles in that category sorted according to time created

 A user can write a new article using the "Write an article" link on the menu

## Screenshots
![Sign Up Page](/app/assets/images/signup.png)
![Home Page](/app/assets/images/homepage.png)
![Category Page](/app/assets/images/category.png)
![New Article Page](/app/assets/images/newarticle.png)

## Built With
- [Ruby 2.6.3](https://www.ruby-lang.org/en/news/2020/03/31/ruby-2-7-1-released/)
- [Ruby on Rails 5.2.4.4](https://weblog.rubyonrails.org/2020/6/17/Rails-6-0-3-2-has-been-released/)

## Live Demo

[architecture-styles](https://architecture-styles.herokuapp.com/)


## Getting Started

To get a local copy up and running follow these simple example steps.

### Setup
1. Clone this repository with `git clone https://github.com/Georjane/architecture-styles.git`

1. Navigate to this directory locally by typing `cd architecture-styles`

1. Run `bundle install` to install all ruby dependecies

1. Run `yarn` to install js dependencies

1. Run `bin/rails db:migrate` to create necessary tables in database

### Usage

Start server with:

```
    rails server
```

Open `http://localhost:3000/` in your browser.

### Run tests

Run the tests by running the following command
```
    rails test
```

### Deployment

This project is depolyed to Heroku [architecture-styles](https://architecture-styles.herokuapp.com/)

## Author
### 1. Witah Georjane
* Github: [@Georjane](https://github.com/Georjane)
* Twitter: [@WittyJany](https://twitter.com/WittyJany)
* LinkedIn: [Witah Georjane](https://www.linkedin.com/in/witah-georjane)

## Contributing
There are two ways of contributing to this project:

1. If you see something wrong or not working, please open the issue in issue section
2. If you see something to improve or to correct, and you have a solution to that, follow the below steps to contribute:
    1. Fork this repository
    2. Clone it on your local computer by running `git clone https://github.com/your-username/architecture-styles.git` __Replace *your username* with the username you use on github__
    3. Open the cloned repository which appears as a folder on your local computer with your favorite code editor
    4. Create a separate branch off the *master branch*,
    5. Write your codes which fix the issue you found
    6. Commit and push the branch you created
    7. Open a pull request, comparing your new created branch with our original master branch [here](https://github.com/Georjane/architecture-styles)

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgment
* [Microverse](https://www.microvese.org)


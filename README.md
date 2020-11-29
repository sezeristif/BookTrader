# Book-Trader

Book-Trader is a Ruby on Rails application that you can Sign in , share books, and trade books with another users. It uses MVC pattern and renders serverside HTML to the view. 

For Styling: [bootstrap](https://getbootstrap.com/)

For Authentication: [Devise](https://github.com/heartcombo/devise)

Application Link: [booktrader](https://infinite-fortress-91603.herokuapp.com/)

## Features

### Testing
Used Rspec and cappybara together for testing. 
For all tests: Run in root directory of the project 
```shell
bundle exec rspec
```

Run for specific test:
```shell
bundle exec rspec spec/cappybara/signin_spec.rb
```
This command runs rspec cappybara spec with selenium driver. It opens a chrome tab and tests can be seen step by step.
https://github.com/teamcapybara/capybara

## Searchbar

You can searh all books on the project with the searchbar inside the navigation bar. It searches the book titles in the database and show results on a different page.

## DataTable

Datatable is a js library. With datatable you can add advanced interaction controls to your html table and it is simple to use. You can test it with https://infinite-fortress-91603.herokuapp.com/books clicking this link.



## Installation

### Clone the repository

```shell
git clone git@github.com:sezeristif/Book-Trader.git
cd project
```

### Check your Ruby version

```shell
ruby -v
```

If not, install the right ruby version using [rbenv](https://github.com/rbenv/rbenv) (it could take a while):

```shell
rbenv install 2.7.1
```

### Install dependencies

Using [Bundler](https://github.com/bundler/bundler):

```shell
bundle install
```


### Initialize the database

```shell
rails db:create 
rails db:migrate 
rails db:seed
```


## Open The Project Local

```shell
rails s
```


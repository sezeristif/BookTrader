# Book-Trader

Book-Trader is a Ruby on Rails application that you can Sign in , share books, and trade books with another users. It uses MVC pattern and renders serverside HTML to the view. 

For Styling: [bootstrap](https://getbootstrap.com/)

For Authentication: [Devise](https://github.com/heartcombo/devise)

For Debugging: [byebug](https://github.com/deivid-rodriguez/byebug)

Application Link: [booktraderapp.com](https://booktraderapp.herokuapp.com/)

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


zhangjingqiang
==============

My online resume.

# Getting Started

## Set environment variables

```
$ export EMAIL=[...]
$ export ABOUT_ME=[...]
$ export MANDRILL_USERNAME=[...]
$ export MANDRILL_API_KEY=[...]
```

## Create and migrate database

```
$ bundle exec rake db:create db:migrate
```

## Create admin account

```
$ rails console
$ Admin.create!({ email: '...', password: '...', password_confirmation: '...' })
```

# License

[MIT](http://opensource.org/licenses/MIT)

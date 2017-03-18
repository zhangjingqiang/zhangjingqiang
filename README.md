zhangjingqiang
==============

My resume.

# Getting Started

1. Export necessary environment variables:

```bash
    $ export EMAIL=[...]
    $ export ABOUT_ME=[...]
    $ export MANDRILL_USERNAME=[...]
    $ export MANDRILL_API_KEY=[...]
```

2. Create and migrate database:

```bash
    $ rake db:create db:migrate
```

3. Create admin account:

```bash
    $ rails console
    $ Admin.create!({ :email => '...', :password => '...', :password_confirmation => '...' })
```

# License

[MIT](http://opensource.org/licenses/MIT)

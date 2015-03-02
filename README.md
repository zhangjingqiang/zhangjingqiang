zhangjingqiang
==============

My resume.

# Information

- Powered by [Ruby on Rails](http://rubyonrails.org)

# Installation

```ruby
export EMAIL=[...]
export MANDRILL_USERNAME=[...]
export MANDRILL_API_KEY=[...]
rake db:migrate
rails console
Admin.create!({ :email => '...', :password => '...', :password_confirmation => '...' })
```

# License

[MIT](http://opensource.org/licenses/MIT)
#LINE Notify

##Usage
`gem 'line_notify'`
and
`$ bundle install`

or
`$ gem install line_notify`

``` ruby
# app.rb
require 'line_notify'
LineNotify::Client.access_token = 'YOUR_TOKEN'
client = LineNotify::Client.new
client.push('Hello World')
```

in rails
``` ruby
 # config/initializer/line_notify.rb
 LineNotify::Client.access_token = 'YOUR_TOKEN'
 
 # elsewhere
 client = LineNotify::Client.new
 client.push('Hello World')
```

# Caution
This gem use Personal Access Token for developers.
If you want to use Line Notify in production or open web service, register your servise and use OAuth2.0.

# TODO
Use OAuth2.0 for authenticate

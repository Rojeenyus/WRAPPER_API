# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Gem Used
  put into your gemfile

```ruby
gem 'httparty'
gem 'rspec-rails'
gem 'dotenv-rails'
```

then execute:

```
$ bundle install
```

- Coinmarketcap API

get your API KEY/TOKEN here https://pro.coinmarketcap.com/account
read the documentation for endpoints here https://coinmarketcap.com/api/documentation/v1/#

- Create an .env file and name the variable TOKEN. SAMPLE:

```
TOKEN='be05c989-8226-4cb6-8651-44a2f8123d67'
```

- Usage

(sample client.rb file)

```ruby
module Cmc
  class Client
    def self.listings
      response = Request.call('/cryptocurrency/listings/latest')
    end
  end
end
```

(sample controllers/api file)

```ruby
module Api
  class ListingsController < ApplicationController
    def index
      listings = Cmc::Client.listings
      render json: listings
    end
  end
end
```

(sample routes)

```ruby
Rails.application.routes.draw do
  namespace :api do
    get '/listings', to: 'listings#index'
  end
end
```

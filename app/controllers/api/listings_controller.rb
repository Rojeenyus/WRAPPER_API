module Api
  class ListingsController < ApplicationController
    def index
      listings = Cmc::Client.listings
      render json: listings
    end
  end
end

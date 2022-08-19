module Api
  class ExchangesController < ApplicationController
    def index
      exchanges = Cmc::Client.exchanges
      render json: exchanges
    end
  end
end

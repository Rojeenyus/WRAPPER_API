module Api
  class AirdropsController < ApplicationController
    def index
      airdrops = Cmc::Client.airdrops
      render json: airdrops
    end
  end
end

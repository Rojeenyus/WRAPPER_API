module Api
  class BlockchainsController < ApplicationController
    def index
      blockchains = Cmc::Client.blockchains
      render json: blockchains
    end
  end
end

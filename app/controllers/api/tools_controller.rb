module Api
  class ToolsController < ApplicationController
    def index
      tools = Cmc::Client.tools
      render json: tools
    end
  end
end

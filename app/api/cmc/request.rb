module Cmc
  class Request
    include HTTParty
    base_uri 'https://sandbox-api.coinmarketcap.com/v1'

    def self.call(endpoint)
      response = get("#{endpoint}", { headers: { 'X-CMC_PRO_API_KEY' => Rails.application.config.x.cmc.token } })
      raise Exception if response.code != 200

      { code: response.code, status: response.message, data: JSON.parse(response.body) }
    rescue Exception
      response = { code: response.code, status: response.message, data: Error.map(response.code) }
    end
  end
end

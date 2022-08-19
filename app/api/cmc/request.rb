module Cmc
  class Request
    include HTTParty
    base_uri 'https://sandbox-api.coinmarketcap.com/v1'

    def self.call(endpoint)
      response = get("#{endpoint}", { headers: { 'X-CMC_PRO_API_KEY' => 'bc95c989-8736-4cb6-8651-44a2f8e7bd67' } })
      raise Exception if response.code != 200

      { code: response.code, status: response.message, data: JSON.parse(response.body) }
    rescue Exception
      response = { code: response.code, status: response.message, data: Error.map(response.code) }
    end
  end
end

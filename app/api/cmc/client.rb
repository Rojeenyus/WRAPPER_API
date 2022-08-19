module Cmc
  class Client
    def self.listings
      response = Request.call('/cryptocurrency/listings/latest')
    end

    def self.exchanges
      response = Request.call('/exchange/listings/latest')
    end

    def self.blockchains
      response = Request.call('/blockchain/statistics/latest')
    end

    def self.tools
      response = Request.call('/tools/price-conversion')
    end

    def self.airdrops
      response = Request.call('/cryptocurrency/airdrops')
    end
  end
end

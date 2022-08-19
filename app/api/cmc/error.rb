module Cmc
  class Error
    def self.map(code)
      case code
      when 401
        'Unauthorized request. You have no permission'
      when 404
        'Invalid Request! Please make sure to enter correct url'
      else
        'Service Unavailable. Please try again later'
      end
    end
  end
end

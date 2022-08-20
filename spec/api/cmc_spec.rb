require 'rails_helper'

describe Cmc::Client do
  it 'should return status 200' do
    response = Cmc::Request.call('/cryptocurrency/listings/latest')
    expect(response[:code]).to be(200)
  end

  it 'should have a response' do
    response = Cmc::Request.call('/cryptocurrency/listings/latest')
    expect(response.nil?).to be(false)
  end
end

describe Cmc::Request do
  it 'should return error if no endpoint' do
    expect { Cmc::Request.call }.to raise_error(ArgumentError)
  end

  it 'should return an error hash' do
    expect { Cmc::Request.call('/randomness')[:code] }.to be(404)
  end
end

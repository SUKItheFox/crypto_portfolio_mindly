class HomeController < ApplicationController
  def index

  	require 'net/http'
  	require 'json'

  	@url = 'https://api.bitfinex.com/v1/tickers/'
  	@uri = URI(@url)
  	@response = Net::HTTP.get(@uri)
  	@coins = JSON.parse(@response)
  	@my_coins = ["BTCEUR", "XRPEUR", "ETHEUR",]
  end
end

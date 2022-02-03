#create by hitting the api
#send those to the function 
require 'httparty'
require 'json'
require './lib/dto'

def transfers
  response = HTTParty.get('https://shani-ellevest-take-home.glitch.me/transfers', format: :plain)
  JSON.parse(response, symbolize_names: true)
end

def users
  response = HTTParty.get('https://shani-ellevest-take-home.glitch.me/users', format: :plain)
  JSON.parse(response, symbolize_names: true)
end

def accounts
  response = HTTParty.get('https://shani-ellevest-take-home.glitch.me/accounts', format: :plain)
  JSON.parse(response, symbolize_names: true)
end

def likes
  response = HTTParty.get('https://shani-ellevest-take-home.glitch.me/likes', format: :plain)
  JSON.parse(response, symbolize_names: true)
end



transform_data = TransformData.new


puts transform_data.transform(transfers, users, accounts, likes)

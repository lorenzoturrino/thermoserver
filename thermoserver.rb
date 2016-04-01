require 'sinatra/base'
require './data_mapper_setup'

class Thermoserver < Sinatra::Base

  get '/temperature' do
    response.headers['Access-Control-Allow-Origin'] = '*'
    temp = Temperature.first
    temp = Temperature.create(temperature: 20) if temp.nil?
    temp.temperature.to_s
  end

  post '/temperature' do
    response.headers['Access-Control-Allow-Origin'] = '*'
    Temperature.first.update(temperature: params[:temp])
    "all good"
  end

end

require 'sinatra/base'
require './datamapper_setup'

class ThermoServer < Sinatra::Base

  get '/temperature' do
    response.headers['Access-Control-Allow-Origin'] = '*'
    thermo_id = params[:thermo_id]
    thermo = Thermostat.first(thermo_id: thermo_id)
    return error_message unless thermo
    thermo.temperature.to_s
  end

  post '/temperature' do
    response.headers['Access-Control-Allow-Origin'] = '*'
    thermo = Thermostat.first_or_create(thermo_id: params[:thermo_id])
    return error_message unless thermo
    thermo.temperature = params[:temperature]
    thermo.save
    "all good"
  end

  def error_message
    status 404
    "Malformed Request"
  end

  get '/fakepost' do
    erb :poster
  end

  get '/' do
    "stuff is kinda running i think"
  end

end

require 'sinatra/base'
require './lib/day'

class BirthdayGreeter < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/data_entry' do
    session[:name] = params[:name]
    session[:day] = Day.new(params[:day])
    session[:month] = params[:month]
    redirect '/birthday_greeting'
  end

  get '/birthday_greeting' do
    @name = session[:name]
    @day = session[:day]
    @month = session[:month]
    erb :greeter
  end
end

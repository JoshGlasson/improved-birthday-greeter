require 'sinatra/base'
require './lib/birthday'

class BirthdayGreeter < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/data_entry' do
    session[:name] = params[:name]
    session[:bday] = Birthday.new(params[:date])
    if params[:date] > Date.today.to_s
      redirect '/what'
    else
      redirect '/birthday_greeting'
    end
  end

  get '/birthday_greeting' do
    @name = session[:name]
    @bday = session[:bday]
    @age = session[:bday].age
    @countdown = session[:bday].until
    @day = session[:bday].pretty_day
    @month = session[:bday].pretty_month
    erb :greeter
  end
end

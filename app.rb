require 'sinatra/base'

class BirthdayGreeter < Sinatra::Base

  get '/' do
    'Hello!'
  end
end

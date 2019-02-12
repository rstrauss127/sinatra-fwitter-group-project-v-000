require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "carcollection"
  end

  get '/' do
    "Welcome to Fwitter"
  end

  get '/signup' do
    erb :signup
  end

  post '/signup' do

    if params[:username].empty?
      redirect '/signup'
    elsif params[:email].empty?
      redirect '/signup'
    elsif params[:password].empty?
      redirect '/signup'
    else
      redirect '/tweets'
    end
  end

  get '/tweets' do

  end
end

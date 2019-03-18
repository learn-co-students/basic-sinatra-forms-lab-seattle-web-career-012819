require 'sinatra/base'

class App < Sinatra::Base

  get '/'do
    "works"
  end

  get '/newteam' do
    erb :newteam
  end

  post '/team' do
    @arr = []
    @arr << "Team Name: " + "#{params[:name]}"
    @arr << "Coach: " + "#{params[:coach]}"
    @arr << "Point Guard: " + params[:pg]
    @arr << "Shooting Guard: " + params[:sg]
    @arr << "Small Forward: " + params[:sf]
    @arr << "Power Forward: " + params[:pf]
    @arr << "Center: " + params[:c]
    erb :team
  end
end

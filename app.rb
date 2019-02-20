require 'sinatra/base'

class App < Sinatra::Base

  get "/newteam" do
    erb :newteam
  end

  post "/team" do
    @team_name = params[:name]
    @team_coach = params[:coach]
    @team_pg = params[:pg]
    @team_sg = params[:sg]
    @team_sf = params[:sf]
    @team_pf = params[:pf]
    @team_c = params[:c]
    erb :team
  end

end

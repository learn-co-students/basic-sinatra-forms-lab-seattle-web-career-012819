require 'sinatra/base'

class App < Sinatra::Base

    get '/team' do 
        erb :team
    end
    
    get '/newteam' do 
        erb :newteam
    end 

    post '/team' do 
        @coach = params[:coach]
        @name = params[:name]
        @sg = params[:sg]
        @sf = params[:sf]
        @c = params[:c]
        @pf = params[:pf]
        @pg = params[:pg]
        erb :team
    end 

end

# Create a route that responds to a GET request at /newteam. Add a form to the newteam.erb template and render it in the GET /newteam route.

# The form should have fields for: Team name ('name') Coach ('coach') Point Guard ('pg') Shooting Guard ('sg') Power Forward ('pf') Small Forward ('sf') Center ('c')

# It should look something like this:


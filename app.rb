require 'sinatra/base'

class App < Sinatra::Base
  set :root, "#{settings.root}/."

  get "/" do
    erb :"form"
  end

  post "/teams" do
    @team = Team.new(params)
    # binding.pry
    erb :"team"
  end


end

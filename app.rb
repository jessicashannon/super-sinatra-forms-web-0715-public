require 'sinatra/base'

class App < Sinatra::Base
  set :root, "#{settings.root}/."

  get "/" do
    erb :"form"
  end
  #
  # get "/new" do
  #   erb :"pirates/new"
  # end
  #
  post "/teams" do
    @team = Team.new(params)
    erb :"team"
  end


end

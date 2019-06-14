class FiguresController < ApplicationController
  # add controller methods
  set :views, proc { File.join(root, '../views/') }
  register Sinatra::Twitter::Bootstrap::Assets

  get '/' do
    erb :"figures/index"
  end

  get '/figures/new' do
    erb:'/figures/new'
end

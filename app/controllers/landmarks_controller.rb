class LandmarksController < ApplicationController
  # add controller methods
  set :views, proc { File.join(root, '../views/') }
  register Sinatra::Twitter::Bootstrap::Assets

  get '/landmarks' do
    @landmarks = Landmarks.all
    erb :"landmarks/index"
  end
end

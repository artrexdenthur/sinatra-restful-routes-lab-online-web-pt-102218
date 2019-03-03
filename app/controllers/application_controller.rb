class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/recipes' do
    erb :index
  end

  get '/recipes/new' do
    erb :create
  end
  
  post '/recipes' do
  end
  
  get '/recipes/:id' do
    @recipe = Recipe.find(params[:id])
    erb :show
  end
  
  get '/recipes/:id/edit' do
  end
  
  patch '/recipes/:id' do
    @recipe = Recipe.find(params[:id])
    erb :update
  end
  
  delete '/recipes/:id' do
    Recipe.find(params[:id]).delete
    redirect '/'
  end

end

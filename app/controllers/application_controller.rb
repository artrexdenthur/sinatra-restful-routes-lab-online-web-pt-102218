class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/recipes/new' do
  
  end
  
  post '/recipes' do
  end
  
  patch '/recipes/:id' do
    
  end

end

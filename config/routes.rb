Rails.application.routes.draw do
  get '/cars' => 'cars#index' 
  get '/makes' => 'makes#index' # show 
  patch '/cars/:id' => 'cars#update'
  patch '/makes/:id' => 'makes#update' # update
  get '/cars/:id' => 'cars#show'
  get '/makes/:id' => 'makes#show' # find (dynamic)
  delete '/cars/:id' => 'cars#destroy' 
  delete '/makes/:id' => 'makes#destroy' # delete (destroy)
  post '/cars' => 'cars#create'
  post '/makes' => 'makes#create'# create
end

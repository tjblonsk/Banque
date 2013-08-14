Banque::Application.routes.draw do


  get '/', to: 'accounts#index'

  get '/deposit', to: 'accounts#deposit'

  post '/deposit/:id', to: 'accounts#deposit_amount'

  # get '/accounts' => "accounts#show"

  # post '/save', to: 'maps#save'

  # get '/favorite', to: 'maps#favorite'

  # get '/show/cities', to: 'maps#show_cities'

  # post '/send', to: 'maps#send_yelp'


  # get '/show/favorite_cities/:name', to: 'maps#show_spots_by_city'

  # get '/show/spot_details/:id', to: 'maps#show_spot_details'

  # delete '/delete/:id', to: 'maps#destroy'


end

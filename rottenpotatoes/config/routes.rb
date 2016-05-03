Rottenpotatoes::Application.routes.draw do
  resources :movies
  # map '/' to be a redirect to '/movies'
  get 'movies/:id/similar' => 'movies#similar', :as => :similar_movie
  root :to => redirect('/movies')
end

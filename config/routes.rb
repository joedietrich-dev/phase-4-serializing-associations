Rails.application.routes.draw do
  resources :movies, only: [:index, :show]
  resources :directors, only: [:index, :show]
  resources :movie_summaries, controller: 'movie/movie_summaries', only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/guest/:id/add_appearance', to: 'guests#add_appearance', as: 'add_appearance'

  resources :guests
  resources :episodes, only: [:index, :show]
  resources :appearances, only: [:new, :create]

end

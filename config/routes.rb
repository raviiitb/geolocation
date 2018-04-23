Rails.application.routes.draw do
  get 'geo/search'

	root 'geo#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:index, :show, :new, :create] do
    # resources :ingredients, only: [:index, :show]
    resources :doses, only: [:new, :create]
    # new_cocktail_dose GET    /cocktails/:cocktail_id/doses/new(.:format)
  end
  resources :doses, only: :destroy
end

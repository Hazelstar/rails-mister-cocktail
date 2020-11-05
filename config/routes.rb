Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'

  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :ingredients, except: [:create, :new, :destroy] do
      resources :doses, except: [:show, :destroy, :new, :create, :edit, :update]
    end
  end
end

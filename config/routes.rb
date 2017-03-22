Rails.application.routes.draw do
  resources :buy_informations
  devise_for :users
  resources :categories
    resources :meats

  get 'buy' => 'goginara#buy'
  get 'contact' => 'goginara#contact'
  get 'goginara/index'
  root "goginara#index"
  match "/:controller(/:action(/:id))", :via => [:post, :get]
  
end

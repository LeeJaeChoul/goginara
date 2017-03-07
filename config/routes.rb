Rails.application.routes.draw do
  devise_for :users
  resources :categories
    resources :meats

  get 'contact' => 'goginara#contact'
  get 'goginara/index'
  root "goginara#index"
  match "/:controller(/:action(/:id))", :via => [:post, :get]
  
end

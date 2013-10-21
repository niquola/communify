Communify::Application.routes.draw do
  get "profiles/show"
  root 'welcome#index'
  get '/welcome/index', to: 'welcome#index'
  resources :profiles do
    collection do
      get :me
    end
  end
  resources :communities do
    collection do
      get :countries
    end
  end

  match 'auth/:provider/callback', to: 'auth#create', via: [:get, :post]
  match 'auth/:provider', to: 'auth#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
end

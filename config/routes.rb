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
end

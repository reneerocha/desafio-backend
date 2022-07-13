Rails.application.routes.draw do
  root 'deputies#index'
  resources :deputies do
    collection {post :import}
  end   
end

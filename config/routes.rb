Rails.application.routes.draw do
  resources :deputies do
    collection {post :import}
  end   
end

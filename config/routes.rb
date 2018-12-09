Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  resources :docs

  # For users already logged in
  authenticated :user do
    root "docs#index", as: "authenticated_root"
  end
  # For details on the DSL available within this file,
  # see http://guides.rubyonrails.org/routing.html
  
  root 'welcome#index'  # this sets our index without having
                        # to type /welcome/index in URL

end

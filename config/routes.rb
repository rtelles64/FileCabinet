Rails.application.routes.draw do
  get 'welcome/index'
  # For details on the DSL available within this file,
  # see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'  # this sets our index without having
                        # to type /welcome/index in URL
end
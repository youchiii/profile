Rails.application.routes.draw do

  Rails.application.routes.draw do
    get 'greetings', to: 'greetings#show'
  end

  root to: "homes#top"
  get 'homes/new'
  get 'homes/index'
  get 'homes/show'
  get 'homes/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

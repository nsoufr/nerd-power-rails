Nerdpower::Application.routes.draw do
  root 'home#index'

  scope :user do
    get '/' => 'user#index',          as: :user_feed
    get '/profile' => 'user#profile', as: :user_profile
  end
end

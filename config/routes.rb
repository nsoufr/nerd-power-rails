Rails.application.routes.draw do
  root 'home#index'
  get 'feed' => 'feed#index'
end

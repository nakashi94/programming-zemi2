Rails.application.routes.draw do
  resources :tweets
  resources :users
  get 'hello-world' => "foo#hello"
end

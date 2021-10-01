Rails.application.routes.draw do
  get 'home' => "static_pages#home"
  get 'help' => "static_pages#help"
  get 'about' => "static_pages#about"
  get 'contact' => "static_pages#contact"
  get 'hello-world' => "foo#hello"
  resources :tweets
  resources :users
end

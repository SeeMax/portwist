Portwist::Application.routes.draw do
  resources :photo_sets, :only => [:create, :index, :update]
  match "/admin" => "photo_sets#index"

  root :to => "root#index"
  match "/submit" => "root#submit"
  match "/howto" => "root#howto"
  match "/terms" => "root#terms"
end

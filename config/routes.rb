Portwist::Application.routes.draw do
  default_url_options :host => Rails.env.production? ? "portwist.com" : "portwist.dev"

  root :to => "root#index"

  resources :photo_uploads, :only => [:create]
  resources :photo_sets, :only => [:create, :index, :update]

  match "/submit" => "root#submit"
  match "/submit2" => "root#submit2"

  match "/howto" => "root#howto"
  match "/terms" => "root#terms"

  match "/admin" => "photo_sets#index"
end

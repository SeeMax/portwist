Portwist::Application.routes.draw do
  root :to => "root#index"
  match "/submit" => "root#submit"
  match "/howto" => "root#howto"
end

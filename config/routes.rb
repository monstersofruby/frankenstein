ActionController::Routing::Routes.draw do |map|
  map.resources :links, :has_many => [ :comments, :votes ]
  map.root :controller => "links"
end

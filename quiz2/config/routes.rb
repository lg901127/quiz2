Rails.application.routes.draw do
  root "supports#index"
  get "/supports/search" => "supports#search", as: :search_support
  # get "/supports" => "supports#supports", as: :support_list
  get "/supports/:id/mark" => "supports#mark", as: :mark
  patch "/supports/:id" => "supports#done_undone"
  resources :supports
end

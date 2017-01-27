Rails.application.routes.draw do
  root 'pictures#index'
  get 'pictures' => 'pictures#index'

  post 'pictures'=> 'pictures#create'
  get 'pictures/new' => 'pictures#new'

  get 'pictures/:id/edit' => "pictures#edit", as: "edit_picture"
  patch 'pictures/:id' => "pictures#update"

  get 'pictures/:id' => 'pictures#show', as: 'picture'

  delete 'pictures/:id' => 'pictures#destroy', as: "delete_picture"

  root 'pictures#index'
end

Rails.application.routes.draw do
   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   root :to => "homes#top"
    get 'top' => 'homes#top'
    patch 'books/:id' => 'books#update', as: 'update_book'
    delete 'books/:id' => 'books#destroy', as: 'destroy_book'
   resources :books
end
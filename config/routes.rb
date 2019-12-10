Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   # get 'contacts/index', as: 'contacts'
   # get 'contacts/new', as: 'new_contact'
   # post 'contacts/create', as: 'create_contact'
   # get 'contacts/:id/edit', to: 'contacts#edit', as: 'edit_contact'
   # patch 'contacts/:id/update', to: 'contacts#update', as: 'update_contact'
   # delete 'contacts/:id/destroy', to: 'contacts#destroy', as: 'destroy_contact'
   # resources :contacts, only: [:index, :edit, :update, :destroy]
   resources :contacts, except: [:show] do
     # collection do
       get 'autocomplete', on: :collection
     # end
   end
   post '/groups', to: 'groups#create'
   # get '/contacts/autocomplete', to: 'contacts#autocomplete'
   root 'contacts#index'
end

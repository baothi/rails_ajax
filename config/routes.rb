Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   get 'contacts/index', as: 'contacts'
   get 'contacts/new', as: 'new_contact'
   post 'contacts/create', as: 'create_contact'
   get 'contacts/:id/edit', to: 'contacts#edit', as: 'edit_contact'
   patch 'contacts/:id/update', to: 'contacts#update', as: 'update_contact'
   root 'contacts#index'
end

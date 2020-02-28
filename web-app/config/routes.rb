Rails.application.routes.draw do
  root 'welcome#index'
  resources :datasets
  delete '/datasets/:id/data_file/:data_file_id', to: 'datasets#destroy_data_file', as: 'destroy_data_file'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

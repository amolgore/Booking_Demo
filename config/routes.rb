Rails.application.routes.draw do
  devise_for :users
  root 'sales#index'
  get '/sales_report', to: 'sales#sales_report'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

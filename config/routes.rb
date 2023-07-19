Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout'}, :skip => [:registrations] , :controllers => { registrations: "registrations"}
  as :user do
    get 'account/:id/edit' => 'registrations#edit', :as => 'edit_user_registration'
    put 'account/:id' => 'registrations#update', :as => 'update_user_registration'
    get 'account/:id' => 'registrations#show', :as => 'user_registration'
  end
  get 'pages/home'
  root to: "pages#home"
end

Rails.application.routes.draw do
	get 'login', to: 'staffs#staff_login'
	get 'logout', to: 'staffs#logout'
	
	post 'login', to: 'staffs#staff_login'
	
	resources :roles
	resources :items
	resources :repairs
	resources :payments
	resources :staffs

	resources :customers do
		member do
			get :search
		end
		collection do
    		get :search
 		end
		resources :itemrepairs
	end

	resources :itemrepairs do
		member do
			get :search
		end
		collection do
    		get 'search', to: 'customers#search'
 		end
	end	

	root 'staffs#login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

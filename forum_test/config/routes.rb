Rails.application.routes.draw do
	resources :comments
	resources :bukus
	# for login page
	get 'login', to: 'users#formlog'
	#proses logout
	get 'logout', to: 'users#logout'
	# proses login
	post 'proses_login', to: 'users#proses_login'
	#proses tampilan baru
	get 'tbaru', to: 'topics#tbaru'
	get 'tbaru2/:id' , to: 'topics#tbaru2', as: :tbaru2
	get 'topics/:id/tbaru3', to: 'topics#tbaru3', as: :tbaru3
	get 'topics/tbaru4', to: 'topics#tbaru4'
	resources :topics
	# 	# collection do
	# 	# 	get :test
	# 	# end
	# 		member do
	# 		get :tbaru
	# 	end
	# end

	get 'topics/bukus', to: 'topics#buku'
	resources :users do
	end
	root 'topics#index'
	root 'bukus#index'
	# root topics_path
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
#Member : Butuh id
#Collection : Tidak butuh id
Rails.application.routes.draw do
	resources :topics do



	end
	resources :comments do
	end
	# 	# collection do
	# 	# 	get :test
	# 	# end

	# 	# member do
	# 	# 	get :test22
	# 	# 	post :test2
	# 	# end
	
	root 'comments#index'
	root 'topics#index'
	# root topics_path
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
#Member : Butuh id
#Collection : Tidak butuh id
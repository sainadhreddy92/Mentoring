Mentoring::Application.routes.draw do
	
	resources :users
	resources :current_mentors
	resources :current_mentees
        resources :feedbacks
	
	
	root 'application#index'
end

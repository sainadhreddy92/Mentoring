Mentoring::Application.routes.draw do
	
	resources :users
	resources :current_mentors
	resources :current_mentees
	root :to => redirect('/users')
end

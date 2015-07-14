Mentoring::Application.routes.draw do
	
  get 'sessions/new'

	resources :users do
  	 get 'mentors', :on => :collection
         get 'mentees', :on => :collection
        end
        
        resources :feedbacks
	resources :current_mentors
	resources :current_mentees
        
	resources :application
	get 'login'     => 'sessions#new'
	post 'login'    => 'sessions#create'
	delete 'logout' => 'sessions#destroy'
      
        
	
	
	root 'sessions#new'
end

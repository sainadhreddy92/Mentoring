class UsersController < ApplicationController

		
	def index
	end
	
	
	def show
	   @user = User.find(params[:id])
	end

	def new
	 @user = User.new
	end

	def create
    		@user = User.new(params[:user])    # Not the final implementation!
    		if @user.save
      			flash[:success] = "Welcome to the CSG Mentoring Tool!"
      			redirect_to @user
    		else 
			flash[:notice] = "Error regsitering."
			

			if params[:user][:user_role]
                          render :partial => 'users/mentor', :layout => 'partial'
			 else
  		          render :new
     			end
    	         end
        end

	
	
end

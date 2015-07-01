class UsersController < ApplicationController

		
	def index
       	    @users = User.where(:survey_id => params[:survey_id])
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
    			log_in @user
      			flash[:notice] = "User Created Successfully!"
      			redirect_to @user
      
    		else 
			flash[:warning] = "Error regsitering."
			

			if params[:user][:user_role]
                          render :partial => 'users/mentor_form', :layout => 'partial'
			 else
  		          render :new
     			end
    	         end
        end

	
	
end

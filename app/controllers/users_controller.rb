class UsersController < ApplicationController

		
	def index
       	  @users = User.where(params[:user_role] == 'mentor')
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
			

			if params[:user][:user_role]=='mentor'
                          render :partial => 'users/mentor_form', :layout => 'partial'
			 else
  		          render :new
     			end
    	         end
        end

	def destroy
    		User.find(params[:id]).destroy
    		flash[:success] = "User deleted"
    		redirect_to users_url
  	end
	
end

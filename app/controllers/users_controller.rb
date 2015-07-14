

class UsersController < ApplicationController

		
	def mentors
       	  @mentors = User.where("user_role == 'mentor'")
          
	end
    
        def mentees
       	  @mentees = User.where("user_role == 'mentee'")
          
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
                        #UserMailer.notify(@user).deliver
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
             if User.find(params[:id]).user_role == 'mentor'
                User.find(params[:id]).destroy
    		flash[:success] = "User deleted"
    		redirect_to mentors_users_url
             else
		User.find(params[:id]).destroy
    		flash[:success] = "User deleted"
    		redirect_to mentees_users_url
	     end
  	end
	
end

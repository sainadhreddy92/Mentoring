

class UsersController < ApplicationController

		
	def mentors
       	  @mentors = User.where("user_role == 'mentor'")
          respond_to do |format|
           format.html
           format.csv { send_data @mentors.to_csv,:filename => "Mentorslist.csv" }
            
           
          end
          
	end
    
        def mentees
       	  @mentees = User.where("user_role == 'mentee'")
          respond_to do |format|
           format.html
           format.csv { send_data @mentees.to_csv,:filename => "Menteeslist.csv" }
           
          end
          
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
                @feedbacks = Feedback.where(user_id: params[:id])
                if @feedbacks!= 0
          	      @feedbacks.each do |feedback|
          		      	feedback.destroy
		      end
                end
		User.find(params[:id]).destroy
    		flash[:success] = "User deleted"
    		redirect_to mentees_users_url
	     end
  	end
	
end

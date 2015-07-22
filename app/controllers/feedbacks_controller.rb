class FeedbacksController < ApplicationController

		
	def index
 		@feedbacks = Feedback.includes(:user).all
	end	
	
	
	def new
		@feedback = Feedback.new
                   		
	end
	
	def create
                @user = current_user
		@feedback = Feedback.new(params[:feedback])
                @feedback.user = @user
                
		if @feedback.save 
                       if @feedback.problem == 'Yes'
   				#UserMailer.alert(@user).deliver
                       end
                     
			flash[:notice] = "feedback submitted successfully!"
			redirect_to @user
			
		else 
			flash.now[:warning] = "Error submitting feedback."
			render :new
		end
			
	
	end


end

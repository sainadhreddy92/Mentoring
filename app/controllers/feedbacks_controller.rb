class FeedbacksController < ApplicationController

		
	def index
 		
	end	
	
	
	def new
		@feedback = Feedback.new
                   		
	end
	
	def create
		params[:feedback][:user_id] = params[:user_id]
		@feedback = Feedback.new(params[:feedback])
		if @feedback.save 
			flash[:notice] = "feedback submitted successfully!"
			render :new
			
		else 
			flash[:warning] = "Error submitting feedback."
			render :new
		end
			
	
	end


end

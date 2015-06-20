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
    		@user = User.new(user_params)    # Not the final implementation!
    		if @user.save
      			flash[:success] = "Welcome to the CSG Mentoring Tool!"
      			redirect_to @user
    		else
			flash[:notice] = "#Error regsitering."
      			render 'new'
    	         end
        end

	private
	##Strong Parametres
	def user_params
	 params.require(:user).permit(:user_role, :cisco_email, :current_group, :work_city, :conflict_resolution, :customer_know_how, :personal_branding,
			:leading_change, :exec_acheive_results, :align_and_influence, :managing_without_authority, :career_exploration, :win_win_negotiation, :effective_communication, :think_out_box, :tech_know, :other, :tech_areas, :other_areas)          
	end
end

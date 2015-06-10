class CurrentMentorsController < ApplicationController

		
	def index
 		
	end	
	
	##Strong Parameters
	def current_mentor_params
		params.require(:current_mentor).permit(:mentor_id, :area_of_interest, :notes)
	end

end

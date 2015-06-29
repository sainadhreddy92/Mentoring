class Feedback < ActiveRecord::Base
	belongs_to :user
	
	attr_accessible :suggest_status, :support_status, :goal_status, :problem, :suggestions
end

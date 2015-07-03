class Feedback < ActiveRecord::Base
	belongs_to :user
	
	attr_accessible :suggest_status, :support_status, :goal_status, :problem, :suggestions
        validates :suggest_status, :presence => true
	validates :support_status, :presence => true
        validates :goal_status, :presence => true
        validates :problem, :presence => true
        
end

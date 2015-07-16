class User < ActiveRecord::Base
	has_one :feedback
	
	attr_accessible :password, :password_confirmation, :user_role, :cec_id, :current_group,  :work_city, :job_role, :conflict_resolution, :customer_know_how, :personal_branding,
			:leading_change, :exec_acheive_results, :align_and_influence, :managing_without_authority, :career_exploration, :win_win_negotiation, :effective_communication, :think_out_box, :tech_know, :other, :tech_areas, :other_areas         
	
	 
		
		
	before_save {self.cec_id = cec_id.downcase}

        validates :cec_id, :presence   => true,
                  uniqueness: true
	validates :work_city, :presence => true
	validates :job_role, :presence => true
            
	
	validate :atleast_one_is_checked
	
	
	has_secure_password
	validates :password, presence: true, length: {minimum: 6}

        
	
	
	
	
	def atleast_one_is_checked

		errors.add(:base, "Select atleast one check box") unless conflict_resolution || customer_know_how || personal_branding || leading_change || exec_acheive_results || align_and_influence || managing_without_authority ||career_exploration || win_win_negotiation|| effective_communication || think_out_box ||tech_know || other        
	
  	end
	
	
	def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |product|
        csv << product.attributes.values_at(*column_names)
      end
    end
  end	
	
	

end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

more_users = [ {:user_role => 'admin', :cec_id => 'admin',:job_role => 'Manager',:current_group => 'csg', :work_city => 'San Jose', :conflict_resolution => 'true' , :customer_know_how => 			'false', :personal_branding => 'false', :leading_change => 'false' , :exec_acheive_results => 'false', :align_and_influence=> 			'false', :managing_without_authority => 'false', :career_exploration => 'false' , :win_win_negotiation=> 'false', :effective_communication => 'false', :think_out_box => 'false', :tech_know => 'false', :other => 'false', :tech_areas => '', :other_areas => '',:password => 'admincsg',:password_confirmation =>'admincsg'} ]
		

more_users.each do |user|
	User.create!(user)
end

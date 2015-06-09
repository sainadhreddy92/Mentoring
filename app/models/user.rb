class User < ActiveRecord::Base
  attr_accessible :user_role, :cec_id, :current_group, :work_city, :conflict_resolution, :customer_know_how, :personal_branding,:leading_change, :exec_acheive_results, :align_and_influence, :managing_without_authority, :career_exploration, :win_win_negotiation, :effective_communication, :think_out_box, :tech_know, :other, :tech_areas, :other_areas

end

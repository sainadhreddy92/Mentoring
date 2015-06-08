class CreateCurrentMentors < ActiveRecord::Migration
  def change
    create_table :current_mentors do |t|
	t.string 'mentee_id'
	t.string 'are_of_interest'
	t.text  'notes'
    end
  end
end

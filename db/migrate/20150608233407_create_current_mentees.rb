class CreateCurrentMentees < ActiveRecord::Migration
  def change
    create_table :current_mentees do |t|
	t.string 'mentor_id'
	t.string 'are_of_interest'
	t.text  'notes'
	
    end
  end
end

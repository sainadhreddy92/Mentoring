class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
	t.boolean 'user_role'
	t.string 'cisco_email'
	t.string 'current_group'
	t.string 'work_city'
	t.boolean 'conflict_resolution'
	t.boolean 'customer_know_how'
	t.boolean 'personal_branding'
	t.boolean 'leading_change'
	t.boolean 'exec_acheive_results'
	t.boolean 'align_and_influence'
	t.boolean 'managing_without_authority'
	t.boolean 'career_exploration'
	t.boolean 'win_win_negotiation'
	t.boolean 'effective_communication'
	t.boolean 'think_out_box'
	t.boolean 'tech_know'
	t.boolean 'other'
	t.string 'tech_areas'
	t.string 'other_areas'
    end
  end
end

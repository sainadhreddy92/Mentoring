class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.string 'problem'
      t.string 'goal_status'
      t.string 'suggest_status'
      t.string 'support_status'
      t.text 'suggestions'
      t.timestamps null: false
    end
  end
end

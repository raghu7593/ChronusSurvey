class CreateQuestionGroups < ActiveRecord::Migration
  def change
    create_table :question_groups do |t|
      t.integer :user_id
      t.integer :uid
      t.string  :type
      t.boolean :has_other_option
      t.boolean :allow_comments

      t.timestamps
    end
  end
end

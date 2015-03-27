class CreateQuestionGroupOptions < ActiveRecord::Migration
  def change
    create_table :question_group_options do |t|
      t.string :title
      t.integer :question_group_id

      t.timestamps
    end
  end
end

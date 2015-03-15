class CreateQuestionGroups < ActiveRecord::Migration
  def change
    create_table :question_groups do |t|
      t.string :question_text
      t.integer :question_type
      t.integer :section_id
      t.integer :position
      t.boolean :allow_other_option

      t.timestamps
    end
  end
end

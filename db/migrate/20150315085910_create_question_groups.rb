class CreateQuestionGroups < ActiveRecord::Migration
  def change
    create_table :question_groups do |t|
      t.integer :question_type
      t.integer :section_id
      t.integer :position
      t.boolean :allow_other_option, :default => false

      t.timestamps
    end
  end
end

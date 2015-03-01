class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :title
      t.integer :position
      t.integer :survey_id

      t.timestamps
    end
  end
end

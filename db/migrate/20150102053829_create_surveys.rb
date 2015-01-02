class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :title
      t.boolean :public
      t.text :description
      t.string :uid

      t.timestamps
    end
  end
end

class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :title
      t.boolean :public
      t.boolean :login_required
      t.date :end_date
      t.text :description
      t.string :uid

      t.timestamps
    end
  end
end

class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.date :start_date
      t.date :end_date
      t.string :name
      t.integer :hours_per_day
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end

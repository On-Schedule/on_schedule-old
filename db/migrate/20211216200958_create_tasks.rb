class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.date :start_date
      t.date :end_date
      t.integer :hours
      t.string :name
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end

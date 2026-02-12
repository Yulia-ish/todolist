class AddTimeTable < ActiveRecord::Migration[7.1]
  def change
    create_table :time_tables do |t|
      t.references :user, null: false, foreign_key: true
      t.references :task, null: true, foreign_key: true
      t.string :title
      t.integer :weekday
      t.integer :start_hour
      t.integer :start_minute
      t.integer :end_hour
      t.integer :end_minute
      t.timestamps
    end
  end
end

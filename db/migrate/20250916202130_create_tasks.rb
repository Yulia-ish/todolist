class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.string :state
      t.text :description
      t.datetime :deadline
      t.integer :cost
      t.integer :priority
      t.timestamps
    end
  end
end

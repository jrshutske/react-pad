class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :name
      t.boolean :complete
      t.integer :created_by_id
      t.integer :pad_id

      t.timestamps
    end
  end
end

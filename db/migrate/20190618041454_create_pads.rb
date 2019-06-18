class CreatePads < ActiveRecord::Migration[5.2]
  def change
    create_table :pads do |t|
      t.string :name
      t.string :description
      t.integer :created_by_id

      t.timestamps
    end
  end
end

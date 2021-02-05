class CreateEstimations < ActiveRecord::Migration[6.0]
  def change
    create_table :estimations do |t|
      t.string :room
      t.string :wide
      t.string :height
      t.integer :ceilling_id
      t.integer :grade_id
      t.timestamps
    end
  end
end

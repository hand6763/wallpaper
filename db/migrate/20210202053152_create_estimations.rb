class CreateEstimations < ActiveRecord::Migration[6.0]
  def change
    create_table :estimations do |t|
      t.integer :wide_id
      t.integer :ceilling_id
      t.integer :grade_id
      t.timestamps
    end
  end
end

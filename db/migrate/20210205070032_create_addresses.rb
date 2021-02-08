class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :postal_code, null: false
      t.string :prefecture, null: false
      t.string :municipality, null: false
      t.string :house_number, null: false
      t.string :building_name
      t.string :phone_number, null: false
      t.text :request
      t.timestamps
    end
  end
end

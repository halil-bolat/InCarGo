class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.integer :brand_id
      t.string :model
      t.integer :year
      t.string :description
      t.integer :price
      t.integer :user_id
      t.integer :millage

      t.timestamps
    end
  end
end

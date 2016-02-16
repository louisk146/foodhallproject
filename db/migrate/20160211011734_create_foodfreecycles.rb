class CreateFoodfreecycles < ActiveRecord::Migration
  def change
    create_table :foodfreecycles do |t|
      t.string :food
      t.string :location
      t.text :description
      t.string :email

      t.timestamps null: false
    end
  end
end

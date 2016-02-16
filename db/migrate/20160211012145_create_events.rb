class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :location
      t.text :description
      t.string :email

      t.timestamps null: false
    end
  end
end

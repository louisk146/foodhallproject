class CreateArchives < ActiveRecord::Migration
  def change
    create_table :archives do |t|
      t.string :title
      t.string :location
      t.text :description
      t.string :organiserdetails
      t.date :date
      t.string :eventduration

      t.timestamps null: false
    end
  end
end

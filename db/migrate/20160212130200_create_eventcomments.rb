class CreateEventcomments < ActiveRecord::Migration
  def change
    create_table :eventcomments do |t|
      t.string :commenter
      t.text :body
      t.string :contact
      t.references :event, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

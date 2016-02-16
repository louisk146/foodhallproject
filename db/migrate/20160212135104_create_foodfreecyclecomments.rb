class CreateFoodfreecyclecomments < ActiveRecord::Migration
  def change
    create_table :foodfreecyclecomments do |t|
      t.string :commenter
      t.text :body
      t.string :contact
      t.references :foodfreecycle, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

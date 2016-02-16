class AddStatusToFoodfreecycles < ActiveRecord::Migration
  def change
    add_column :foodfreecycles, :status, :string
  end
end

class AddAttachmentImageToFoodfreecycles < ActiveRecord::Migration
  def self.up
    change_table :foodfreecycles do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :foodfreecycles, :image
  end
end

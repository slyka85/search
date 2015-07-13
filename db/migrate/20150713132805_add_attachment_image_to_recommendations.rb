class AddAttachmentImageToRecommendations < ActiveRecord::Migration
  def self.up
    change_table :recommendations do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :recommendations, :image
  end
end

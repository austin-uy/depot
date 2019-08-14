class AddAttachmentImageUrlToProducts < ActiveRecord::Migration[5.2]
  def self.up
    change_table :products do |t|
      t.attachment :image_url
    end
  end

  def self.down
    remove_attachment :products, :image_url
  end
end

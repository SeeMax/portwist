class AddPhotoUploads < ActiveRecord::Migration
  def self.up
    create_table :photo_uploads do |t|
      t.string :photo
      t.timestamps
    end
  end

  def self.down
    drop_table :photo_uploads
  end
end

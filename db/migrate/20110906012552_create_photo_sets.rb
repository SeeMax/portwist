class CreatePhotoSets < ActiveRecord::Migration
  def self.up
    create_table :photo_sets do |t|
      t.string :photo_1
      t.string :photo_2
      t.string :your_name
      t.string :your_title

      t.timestamps
    end
  end

  def self.down
    drop_table :photo_sets
  end
end

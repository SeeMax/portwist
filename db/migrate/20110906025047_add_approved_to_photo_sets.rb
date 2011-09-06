class AddApprovedToPhotoSets < ActiveRecord::Migration
  def self.up
    add_column :photo_sets, :status, :string, :default => 'pending', :null => false
  end

  def self.down
    remove_column :photo_sets, :status
  end
end

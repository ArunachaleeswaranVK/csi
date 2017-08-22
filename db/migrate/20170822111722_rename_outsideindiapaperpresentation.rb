class RenameOutsideindiapaperpresentation < ActiveRecord::Migration
  def change
    rename_table :outsideindiapaperpresentations,:paperpresentationdetails
  end
end

class RemoveBestcsiinternationalstudentseventhostIdFromInstitutes < ActiveRecord::Migration
  def change
    remove_column :institutes, :bestcsiinternationalstudentseventhost_id
  end
end

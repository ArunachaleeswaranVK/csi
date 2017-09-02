class RemoveVolunteersFromBestcsiintevetnhosts < ActiveRecord::Migration
  def change
    remove_column :bestcsiinternationalstudentseventhosts , :volunteers
  end
end

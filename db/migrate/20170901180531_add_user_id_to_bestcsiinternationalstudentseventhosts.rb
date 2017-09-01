class AddUserIdToBestcsiinternationalstudentseventhosts < ActiveRecord::Migration
  def change
    add_column :bestcsiinternationalstudentseventhosts, :user_id, :integer
  end
end

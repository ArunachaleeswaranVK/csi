class AddUserIdToBestaccreditedstudentbranches < ActiveRecord::Migration
  def change
    add_column :bestaccreditedstudentbranches, :user_id, :integer
  end
end

class AddUserIdToHighestcommitedstudentbranchawards < ActiveRecord::Migration
  def change
    add_column :studentbranchactivists, :user_id, :integer
  end
end

class AddUserIdToBestregionalchapterawards < ActiveRecord::Migration
  def change
    add_column :regionalchapterawards, :user_id, :integer
  end
end

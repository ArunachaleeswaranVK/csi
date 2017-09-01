class AddUserIdToLongestcontinuoussbcaward < ActiveRecord::Migration
  def change
    add_column :longestcontinuoussbcs, :user_id, :integer
  end
end

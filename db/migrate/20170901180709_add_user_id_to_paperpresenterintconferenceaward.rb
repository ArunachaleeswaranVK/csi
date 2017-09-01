class AddUserIdToPaperpresenterintconferenceaward < ActiveRecord::Migration
  def change
    add_column :paperpresenters, :user_id, :integer
  end
end

class AddUserIdToServiceawardindividuals < ActiveRecord::Migration
  def change
    add_column :individualserviceawards, :user_id, :integer
  end
end

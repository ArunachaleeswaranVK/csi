class AddUserIdToFacmaxpublishaward < ActiveRecord::Migration
  def change
    add_column :facmaxpublishings, :user_id, :integer
  end
end

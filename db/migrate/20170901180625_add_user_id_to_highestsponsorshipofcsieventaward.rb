class AddUserIdToHighestsponsorshipofcsieventaward < ActiveRecord::Migration
  def change
    add_column :highestsponsorshipofcsievents, :user_id, :integer
  end
end

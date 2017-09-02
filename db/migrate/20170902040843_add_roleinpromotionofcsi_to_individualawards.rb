class AddRoleinpromotionofcsiToIndividualawards < ActiveRecord::Migration
  def change
    add_column :individualserviceawards , :role_in_csi_membership_promotion_in_chapter , :integer
  end
end

class ChangeRoleinpromotionofcsiToIndividualawards < ActiveRecord::Migration
  def change
    change_column  :individualserviceawards , :role_in_csi_membership_promotion_in_chapter , :string
  end
end

class RemoveNullConstraintFromInstitute < ActiveRecord::Migration
  def change
    change_column :institutes, :address, :string, :null => true
    change_column :institutes, :city, :string, :null => true
    change_column :institutes, :state, :string, :null => true
    change_column :institutes, :pincode, :string, :null => true
    change_column :institutes, :nominating_authority, :string, :null => true
   
  end
end

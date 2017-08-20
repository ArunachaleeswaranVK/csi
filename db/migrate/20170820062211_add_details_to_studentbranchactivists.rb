class AddDetailsToStudentbranchactivists < ActiveRecord::Migration
  def change
    add_column :studentbranchactivists, :csi_volunteer_name, :string
    add_column :studentbranchactivists, :csi_volunteer_email, :string
    add_column :studentbranchactivists, :csi_volunteer_id, :string
    add_column :studentbranchactivists, :valid_till, :date
    add_column :studentbranchactivists, :volunteers, :integer
    add_column :studentbranchactivists, :volunteers_added, :integer
    add_column :studentbranchactivists, :imno, :string
    add_index :studentbranchactivists, :imno
  end
end

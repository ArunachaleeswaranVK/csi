class AddDetailsToStudentmaxpublishings < ActiveRecord::Migration
  def change
    add_column :studentmaxpublishings, :csi_volunteer_name, :string
    add_column :studentmaxpublishings, :csi_volunteer_email, :string
    add_column :studentmaxpublishings, :csi_volunteer_id, :string
    add_column :studentmaxpublishings, :valid_till, :date
    add_column :studentmaxpublishings, :imno, :string
    add_index :studentmaxpublishings, :imno
  end
end

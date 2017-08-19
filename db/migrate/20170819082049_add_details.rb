class AddDetails < ActiveRecord::Migration
  def change
    add_column :facmaxpublishings, :faculty_name, :string
    add_column :facmaxpublishings, :faculty_email, :string
    add_column :facmaxpublishings, :imno, :string
    add_index :facmaxpublishings, :imno
  end
end

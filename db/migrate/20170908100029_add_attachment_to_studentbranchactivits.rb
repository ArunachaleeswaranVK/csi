class AddAttachmentToStudentbranchactivits < ActiveRecord::Migration
  def change
     add_column :studentbranchactivists, :attachment, :string
  end
end

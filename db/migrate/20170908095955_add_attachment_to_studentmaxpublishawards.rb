class AddAttachmentToStudentmaxpublishawards < ActiveRecord::Migration
  def change
     add_column :studentmaxpublishings, :attachment, :string
  end
end

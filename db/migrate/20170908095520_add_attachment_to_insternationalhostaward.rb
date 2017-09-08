class AddAttachmentToInsternationalhostaward < ActiveRecord::Migration
  def change
     add_column :bestcsiinternationalstudentseventhosts, :attachment, :string
  end
end

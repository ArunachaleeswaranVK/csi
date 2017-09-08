class AddAttachmentToFacmaxpublishings < ActiveRecord::Migration
  def change
     add_column :facmaxpublishings, :attachment, :string
  end
end

class AddAttachmentToPaperpresenters < ActiveRecord::Migration
  def change
     add_column :paperpresenters, :attachment, :string
  end
end

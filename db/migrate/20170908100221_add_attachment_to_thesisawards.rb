class AddAttachmentToThesisawards < ActiveRecord::Migration
  def change
     add_column :bestthesisawards, :attachment, :string
  end
end

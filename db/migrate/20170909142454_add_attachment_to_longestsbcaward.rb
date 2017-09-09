class AddAttachmentToLongestsbcaward < ActiveRecord::Migration
  def change
      add_column :longestcontinuoussbcs, :attachment, :string
  end
end

class AddAttachmentToIghestspronsorawards < ActiveRecord::Migration
  def change
    add_column :highestsponsorshipofcsievents, :attachment, :string
  end
  
end

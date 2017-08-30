class AddBestthesisawardIdToRecordforthesisaward < ActiveRecord::Migration
  def change
     add_column :recordforthesisawards, :bestthesisaward_id, :integer
  end
end

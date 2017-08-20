class AddBestcsiinternationalstudentseventhostIdToInternationalevents < ActiveRecord::Migration
  def change
    add_column :internationalevents, :bestcsiinternationalstudentseventhost_id, :integer
  end
end

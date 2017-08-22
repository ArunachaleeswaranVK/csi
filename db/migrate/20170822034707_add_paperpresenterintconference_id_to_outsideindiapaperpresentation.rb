class AddPaperpresenterintconferenceIdToOutsideindiapaperpresentation < ActiveRecord::Migration
  def change
    add_column :outsideindiapaperpresentations, :paperpresenterintconference_id, :integer
  end
end

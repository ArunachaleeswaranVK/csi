class AddPaperpresenterintconferenceIdToInsideindiapaperpresentation < ActiveRecord::Migration
  def change
    add_column :insideindiapaperpresentations, :paperpresenterintconference_id, :integer
  end
end

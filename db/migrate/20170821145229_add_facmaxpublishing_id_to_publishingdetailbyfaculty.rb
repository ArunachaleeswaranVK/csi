class AddFacmaxpublishingIdToPublishingdetailbyfaculty < ActiveRecord::Migration
  def change
    add_column :publishingdetailbyfaculties, :facmaxpublishing_id, :integer
  end
end

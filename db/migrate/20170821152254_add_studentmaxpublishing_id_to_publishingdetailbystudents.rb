class AddStudentmaxpublishingIdToPublishingdetailbystudents < ActiveRecord::Migration
  def change
    add_column :publishingdetailbystudents, :studentmaxpublishing_id, :integer
  end
end

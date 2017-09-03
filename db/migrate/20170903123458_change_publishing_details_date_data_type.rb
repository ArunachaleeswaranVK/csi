class ChangePublishingDetailsDateDataType < ActiveRecord::Migration
  def change
    change_column  :publishingdetailbystudents , :date_of_publishing , :string
  end
end

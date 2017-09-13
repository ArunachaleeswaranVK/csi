class DeleteDetailsFromIndividualregionals < ActiveRecord::Migration
  def change
    remove_column :individualserviceawards , :region
    remove_column :individualserviceawards , :chapter
     remove_column :individualserviceawards , :address
    remove_column :individualserviceawards , :phone
    remove_column :individualserviceawards , :email
  end
end

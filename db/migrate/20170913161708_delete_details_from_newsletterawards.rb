class DeleteDetailsFromNewsletterawards < ActiveRecord::Migration
  def change
    
    
    remove_column :newsletterawards , :region
    remove_column :newsletterawards , :chapter
    remove_column :newsletterawards , :address
    remove_column :newsletterawards , :phone
    remove_column :newsletterawards , :email
   
  end
end

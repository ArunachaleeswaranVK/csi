class DeleteDetailsFromRegionalchapters < ActiveRecord::Migration
  def change
    remove_column :regionalchapterawards , :category
    remove_column :regionalchapterawards , :region
    remove_column :regionalchapterawards , :chapter
    remove_column :regionalchapterawards , :address
    remove_column :regionalchapterawards , :phone
    remove_column :regionalchapterawards , :email
  end
end

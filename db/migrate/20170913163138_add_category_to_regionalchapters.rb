class AddCategoryToRegionalchapters < ActiveRecord::Migration
  def change
     add_column :regionalchapterawards, :category, :string
  end
end

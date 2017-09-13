class AddChapterCategoryToRegionalchapters < ActiveRecord::Migration
  def change
    add_column :regionalchapterawards, :chapter, :string
    
  end
end

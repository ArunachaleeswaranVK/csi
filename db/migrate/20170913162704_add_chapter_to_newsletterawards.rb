class AddChapterToNewsletterawards < ActiveRecord::Migration
  def change
    add_column :newsletterawards, :chapter, :string
  end
end

class AddDetailsToChapters < ActiveRecord::Migration
  def change
    add_column :chapters, :chapter_name, :string
    add_column :chapters, :region, :string
    add_column :chapters, :category, :string
    add_column :chapters, :name, :string
    add_column :chapters, :designation, :string
    add_column :chapters, :email, :string
    add_column :chapters, :mobile, :string
  end
end


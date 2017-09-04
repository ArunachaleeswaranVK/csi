class AddToBestintaward < ActiveRecord::Migration
  def change
     add_column :bestcsiinternationalstudentseventhosts, :imno, :string
    add_index :bestcsiinternationalstudentseventhosts, :imno
  end
end

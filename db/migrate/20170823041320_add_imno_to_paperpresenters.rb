class AddImnoToPaperpresenters < ActiveRecord::Migration
  def change
    add_column :paperpresenters, :imno, :string
    add_index :paperpresenters, :imno
  end
end

class AddImnoToLongestcontinuoussbcs < ActiveRecord::Migration
  def change
    add_column :longestcontinuoussbcs, :imno, :string
    add_index :longestcontinuoussbcs, :imno
  end
end

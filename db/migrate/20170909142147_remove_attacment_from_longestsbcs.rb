class RemoveAttacmentFromLongestsbcs < ActiveRecord::Migration
  def change
     remove_column :longestcontinuoussbcs , :attachment
  end
end

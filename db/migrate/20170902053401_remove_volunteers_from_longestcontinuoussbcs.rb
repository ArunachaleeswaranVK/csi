class RemoveVolunteersFromLongestcontinuoussbcs < ActiveRecord::Migration
  def change
    remove_column :longestcontinuoussbcs , :volunteers
  end
end

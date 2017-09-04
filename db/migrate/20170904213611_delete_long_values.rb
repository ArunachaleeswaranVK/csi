class DeleteLongValues < ActiveRecord::Migration
  def change
    remove_column :longestcontinuoussbcs, :two_year_back_vol
    remove_column :longestcontinuoussbcs, :one_year_back_vol
    remove_column :longestcontinuoussbcs, :current_year_vol
  end
end

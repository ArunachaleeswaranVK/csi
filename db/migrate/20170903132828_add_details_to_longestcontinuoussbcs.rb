class AddDetailsToLongestcontinuoussbcs < ActiveRecord::Migration
  def change
    add_column :longestcontinuoussbcs , :two_year_back_vol , :integer
    add_column :longestcontinuoussbcs , :one_year_back_vol , :integer
    add_column :longestcontinuoussbcs , :current_year_vol , :integer
  end
end

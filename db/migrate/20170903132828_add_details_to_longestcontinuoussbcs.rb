class AddDetailsToLongestcontinuoussbcs < ActiveRecord::Migration
  def change
    add_column :longestcontinuoussbcs , :last_but_before_year_vol_strength , :integer
    add_column :longestcontinuoussbcs , :last_year_vol_strength , :integer
    add_column :longestcontinuoussbcs , :current_year_vol_strength , :integer
  end
end

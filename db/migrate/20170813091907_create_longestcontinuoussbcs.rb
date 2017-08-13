class CreateLongestcontinuoussbcs < ActiveRecord::Migration
  def change
    create_table :longestcontinuoussbcs do |t|

      t.timestamps null: false
    end
  end
end

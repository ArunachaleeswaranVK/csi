class CreateLongestcontinuoussbcs < ActiveRecord::Migration
  def change
    create_table :longestcontinuoussbcs do |t|
      t.integer :volunteers
      t.integer :volunteers_added
      t.timestamps null: false
    end
  end
end

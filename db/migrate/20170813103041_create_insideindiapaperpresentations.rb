class CreateInsideindiapaperpresentations < ActiveRecord::Migration
  def change
    create_table :insideindiapaperpresentations do |t|
      t.string :name_of_conference
      t.date :date_of_conference
      t.string :organised_by
      t.string :name_and_place_of_conference
      t.timestamps null: false
    end
  end
end

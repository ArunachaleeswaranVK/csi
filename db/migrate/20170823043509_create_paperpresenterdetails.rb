class CreatePaperpresenterdetails < ActiveRecord::Migration
  def change
    create_table :paperpresenterdetails do |t|
      t.string :name_of_conference
      t.date :date_of_conference
      t.string :organised_by
      t.string :name_place_of_conference
      t.string :india_or_outside
      t.integer :paperpresenter_id
      t.timestamps null: false
    end
  end
end

class CreateEventdetailsbystudentactivists < ActiveRecord::Migration
  def change
    create_table :eventdetailsbystudentactivists do |t|
      t.string :event_name
      t.string :event_place
      t.string :role_played
      t.timestamps null: false
    end
  end
end

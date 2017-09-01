class CreateContributiontocsiindserviceawards < ActiveRecord::Migration
  def change
    create_table :contributiontocsiindserviceawards do |t|
      t.string :year
      t.string :name_of_position
      t.text :achievement
      t.integer :individualserviceaward_id
      t.timestamps null: false
    end
  end
end

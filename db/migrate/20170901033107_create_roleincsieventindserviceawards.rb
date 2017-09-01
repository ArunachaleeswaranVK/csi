class CreateRoleincsieventindserviceawards < ActiveRecord::Migration
  def change
    create_table :roleincsieventindserviceawards do |t|
      t.date :date_of_event
      t.string :name_of_event
      t.string :type_of_event
      t.string :surplus_amount
      t.string :role
      t.integer :no_of_paper_received
      t.integer :individualserviceaward_id
      t.timestamps null: false
    end
  end
end


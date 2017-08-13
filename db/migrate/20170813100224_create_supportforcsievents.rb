class CreateSupportforcsievents < ActiveRecord::Migration
  def change
    create_table :supportforcsievents do |t|
      
      t.date :date_of_event
      t.string :name_of_event
      t.string :organised_by
      t.text :support_details
      t.string :monetary_value
      
      t.timestamps null: false
    end
  end
end

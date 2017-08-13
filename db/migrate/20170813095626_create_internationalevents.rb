class CreateInternationalevents < ActiveRecord::Migration
  def change
    create_table :internationalevents do |t|
      
      t.string :competetion_name
      t.date :date_of_event
      t.string :no_of_students_from_abroad_with_country_name
      t.timestamps null: false
    end
  end
end

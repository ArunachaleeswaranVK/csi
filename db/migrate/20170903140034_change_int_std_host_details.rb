class ChangeIntStdHostDetails < ActiveRecord::Migration
  def change
    remove_column :internationalevents , :no_of_students_from_abroad_with_country_name
    add_column :internationalevents , :no_of_students_from_abroad , :string
    add_column :internationalevents , :country_name , :string
  end
end

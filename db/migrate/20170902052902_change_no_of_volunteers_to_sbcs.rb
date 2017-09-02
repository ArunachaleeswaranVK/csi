class ChangeNoOfVolunteersToSbcs < ActiveRecord::Migration
  def change
     change_column :sbcs , :no_of_volunteers , :integer
  end
end

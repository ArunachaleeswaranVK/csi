class AddNoOfVolunteersToSbcs < ActiveRecord::Migration
  def change
    add_column :sbcs , :no_of_volunteers , :integer
  end
end

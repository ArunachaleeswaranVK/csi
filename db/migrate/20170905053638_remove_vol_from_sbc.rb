class RemoveVolFromSbc < ActiveRecord::Migration
  def change
    remove_column :sbcs , :no_of_volunteers
  end
end

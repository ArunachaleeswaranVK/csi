class RemoveVolunteersFromStudentbranchactivists < ActiveRecord::Migration
  def change
    remove_column :studentbranchactivists , :volunteers
  end
end

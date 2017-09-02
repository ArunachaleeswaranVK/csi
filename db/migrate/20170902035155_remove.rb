class Remove < ActiveRecord::Migration
  def change
    remove_column :bestaccreditedstudentbranches, :type_of_contests_organised_for_students
  end
end

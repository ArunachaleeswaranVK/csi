class AddStudentbranchactivistIdToEventdetailsbystudentactivist < ActiveRecord::Migration
  def change
    add_column :eventdetailsbystudentactivists, :studentbranchactivist_id, :integer
  end
end

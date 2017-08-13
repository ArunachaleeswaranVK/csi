class CreateStudentbranchactivists < ActiveRecord::Migration
  def change
    create_table :studentbranchactivists do |t|

      t.timestamps null: false
    end
  end
end

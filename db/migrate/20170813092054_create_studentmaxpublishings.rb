class CreateStudentmaxpublishings < ActiveRecord::Migration
  def change
    create_table :studentmaxpublishings do |t|

      t.timestamps null: false
    end
  end
end

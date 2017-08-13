class CreateLargeststudentbranches < ActiveRecord::Migration
  def change
    create_table :largeststudentbranches do |t|

      t.timestamps null: false
    end
  end
end

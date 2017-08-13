class CreateBestaccreditedstudentbranches < ActiveRecord::Migration
  def change
    create_table :bestaccreditedstudentbranches do |t|

      t.timestamps null: false
    end
  end
end

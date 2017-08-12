class CreateNominatedMembers < ActiveRecord::Migration
  def change
    create_table :nominated_members do |t|
      
      t.string :ncode
      t.string :nm_name
      t.string :nm_phone
      t.string :nm_email

      t.timestamps null: false
    end
  end
end

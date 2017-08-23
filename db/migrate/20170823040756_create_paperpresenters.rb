class CreatePaperpresenters < ActiveRecord::Migration
  def change
    create_table :paperpresenters do |t|
      t.string :faculty_name
      t.string :faculty_email
      t.string :faculty_number
      t.string :faculty_csi_membership_no
      t.date :valid_till
      t.timestamps null: false
    end
  end
end

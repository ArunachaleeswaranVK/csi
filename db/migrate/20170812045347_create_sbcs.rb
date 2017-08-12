class CreateSbcs < ActiveRecord::Migration
  def change
    create_table :sbcs do |t|
      
      
      t.string :sbc_membership_no
      t.string :sbc_name , null: false
      t.string :sbc_phone
      t.string :sbc_email
      
      
      t.timestamps null: false
    end
    
  end
end

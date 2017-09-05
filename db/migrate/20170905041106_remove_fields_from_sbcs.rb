class RemoveFieldsFromSbcs < ActiveRecord::Migration
  def change
    remove_column :sbcs , :sbc_membership_no
    remove_column :sbcs , :sbc_phone
    remove_column :sbcs , :sbc_email
  
  end
end

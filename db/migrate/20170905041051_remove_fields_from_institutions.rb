class RemoveFieldsFromInstitutions < ActiveRecord::Migration
  def change
    remove_column :institutes , :district
    remove_column :institutes , :pincode
    remove_column :institutes , :na_phone
    remove_column :institutes , :na_email
    remove_column :institutes , :join_date
    remove_column :institutes , :valid_date
    remove_column :institutes , :validity
    
  end
end

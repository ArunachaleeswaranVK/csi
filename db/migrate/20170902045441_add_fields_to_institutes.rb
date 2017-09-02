class AddFieldsToInstitutes < ActiveRecord::Migration
  def change
    add_column :institutes , :join_date , :date
    add_column :institutes , :valid_date , :date
    add_column :institutes , :validity , :string
  end
end

class CreateInstitutes < ActiveRecord::Migration
  def change
    create_table :institutes do |t|
      
      t.string :imno , null: false
      t.string :name , null: false
      t.string :address , null: false
      t.string :city , null: false
      t.string :district
      t.string :state , null: false
      t.string :pincode , null: false
      t.string :nominating_authority, null: false
      t.string :na_phone
      t.string :na_email
      t.timestamps null: false
    end
      add_index :institutes , :imno , unique: true
  end

end

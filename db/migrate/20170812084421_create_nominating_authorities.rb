class CreateNominatingAuthorities < ActiveRecord::Migration
  def change
    create_table :nominating_authorities do |t|

      t.string :na_name
      t.string :na_phone
      t.string :na_email
      
      
      t.timestamps null: false
    end
  end
end

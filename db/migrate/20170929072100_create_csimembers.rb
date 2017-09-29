class CreateCsimembers < ActiveRecord::Migration
  def change
    create_table :csimembers do |t|
      t.string :email

      t.timestamps null: false
    end
    add_index :csimembers, :email
  end
end

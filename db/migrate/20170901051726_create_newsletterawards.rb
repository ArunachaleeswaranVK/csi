class CreateNewsletterawards < ActiveRecord::Migration
  def change
    create_table :newsletterawards do |t|
      
      t.string :region
      t.string :chapter
      t.string :address
      t.string :phone
      t.string :email
      
      t.text :other_info
      t.timestamps null: false
    end
  end
end

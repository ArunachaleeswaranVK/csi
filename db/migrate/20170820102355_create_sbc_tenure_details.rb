class CreateSbcTenureDetails < ActiveRecord::Migration
  def change
    create_table :sbc_tenure_details do |t|
      t.string :year
      t.string :institution_name
      t.string :imno_of_institution
      t.integer :volunteers
      t.integer :longestcontinuoussbc_id
      t.timestamps null: false
    end
  end
end

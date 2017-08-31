class CreateRegionalchapterawards < ActiveRecord::Migration
  def change
    create_table :regionalchapterawards do |t|
      t.string :category
      t.string :region
      t.string :chapter
      t.string :address
      t.string :phone
      t.string :email
      t.integer :members_number_till_previous_year
      t.float :members_percentage_till_previous_year
      t.integer :members_number_till_current_year
      t.float :members_percentage_till_current_year
      t.integer :student_branch_number_previous_year
      t.integer :student_branch_number_current_year
      t.text :details_deputed_memeber
      t.text :other_info
      t.timestamps null: false
    end
  end
end

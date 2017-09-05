class AddEmailToSbcs < ActiveRecord::Migration
  def change
    add_column :sbcs, :sbc_email, :string
    
  end
end
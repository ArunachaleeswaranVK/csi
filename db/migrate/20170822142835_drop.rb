class Drop < ActiveRecord::Migration
  def change
     drop_table :sbc_tenure_details
  end
end

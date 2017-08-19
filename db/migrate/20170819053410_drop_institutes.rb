class DropInstitutes < ActiveRecord::Migration
  def change
    drop_table :institutes
  end
end

class RemoveIssbcFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :is_sbc
  end
end

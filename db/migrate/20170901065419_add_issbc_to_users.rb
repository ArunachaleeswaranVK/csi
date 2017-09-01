class AddIssbcToUsers < ActiveRecord::Migration
  def change
    add_column :users, :is_sbc, :boolean, default: false
  end
end

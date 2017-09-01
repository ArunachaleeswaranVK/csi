class AddUserIdToNewsletterawards < ActiveRecord::Migration
  def change
    add_column :newsletterawards, :user_id, :integer
  end
end

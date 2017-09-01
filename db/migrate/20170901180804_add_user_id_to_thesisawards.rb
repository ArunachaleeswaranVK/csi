class AddUserIdToThesisawards < ActiveRecord::Migration
  def change
    add_column :bestthesisawards, :user_id, :integer
  end
end

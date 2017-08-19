class ChangeEmailToString < ActiveRecord::Migration
  def change
    change_column :institutes, :na_email, :string
  end
end

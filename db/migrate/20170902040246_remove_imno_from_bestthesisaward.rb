class RemoveImnoFromBestthesisaward < ActiveRecord::Migration
  def change
    remove_column :bestthesisawards , :imno
  end
end

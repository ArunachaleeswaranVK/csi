class RemoveInstituteFromBestthesis < ActiveRecord::Migration
  def change
     remove_column :bestthesisawards , :imno , :string
  end
end

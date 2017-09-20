class RemoveInstituteFromFacmaxpubs < ActiveRecord::Migration
  def change
    remove_column :facmaxpublishings , :imno
  end
end

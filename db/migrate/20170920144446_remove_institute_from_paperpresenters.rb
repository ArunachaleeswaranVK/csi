class RemoveInstituteFromPaperpresenters < ActiveRecord::Migration
  def change
    remove_column :paperpresenters , :imno
  end
end

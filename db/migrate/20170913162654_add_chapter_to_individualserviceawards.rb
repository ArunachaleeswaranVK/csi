class AddChapterToIndividualserviceawards < ActiveRecord::Migration
  def change
    add_column :individualserviceawards, :chapter, :string
  end
end

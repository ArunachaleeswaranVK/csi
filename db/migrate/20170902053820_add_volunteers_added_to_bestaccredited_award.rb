class AddVolunteersAddedToBestaccreditedAward < ActiveRecord::Migration
  def change
     add_column :bestaccreditedstudentbranches , :volunteers_added , :integer
  end
end

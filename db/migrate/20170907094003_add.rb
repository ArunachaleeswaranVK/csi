class Add < ActiveRecord::Migration
  def change
    add_column :bestaccreditedstudentbranches, :attachment, :string
  end
end

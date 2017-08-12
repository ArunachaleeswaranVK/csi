class AddNominatedMembersToInstitution < ActiveRecord::Migration
  def change
    add_column :nominated_members, :imno, :string
    add_index :nominated_members, :imno
  end
end

class AddNominatingAuthoritiesToInstitution < ActiveRecord::Migration
  def change
    add_column :nominating_authorities, :imno, :string
    add_index :nominating_authorities, :imno
  end
end

class AddSbcsToInstitution < ActiveRecord::Migration
  def change
    add_column :sbcs, :imno, :string
    add_index :sbcs, :imno
  end
end

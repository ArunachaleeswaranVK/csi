class AddDetailsToPaperpresenterintconferences < ActiveRecord::Migration
  def change
    add_column :paperpresenterintconferences, :faculty_name, :string
    add_column :paperpresenterintconferences, :faculty_email, :string
    add_column :paperpresenterintconferences, :imno, :string
    add_index :paperpresenterintconferences, :imno
  end
end

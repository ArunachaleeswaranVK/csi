class AddUserIdToStudentmaxpublishawards < ActiveRecord::Migration
  def change
    add_column :studentmaxpublishings, :user_id, :integer
  end
end

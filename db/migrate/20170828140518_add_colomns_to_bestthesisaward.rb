class AddColomnsToBestthesisaward < ActiveRecord::Migration
  def change
    add_column :bestthesisawards, :name_of_nominating_institution, :string
    add_column :bestthesisawards, :address, :string
    add_column :bestthesisawards, :recognized_by, :string
    add_column :bestthesisawards, :reference_number_of_recognition, :string
    add_column :bestthesisawards, :date_of_recognition, :date
    add_column :bestthesisawards, :name_of_nominator, :string
    add_column :bestthesisawards, :designation_of_nominator, :string
    add_column :bestthesisawards, :nominator_email, :string
    add_column :bestthesisawards, :nominator_phone, :string
    add_column :bestthesisawards, :name_of_candidate, :string
    add_column :bestthesisawards, :candidate_email, :string
    add_column :bestthesisawards, :candidate_phone, :string
    add_column :bestthesisawards, :thesis_title, :string
    add_column :bestthesisawards, :defence_of_dissertation_date, :date
    # photocopy of phd certificate
    # summary of defence of dissertation to be uploaded
    # copy of the thesis to be uploaded
    add_column :bestthesisawards, :imno, :string
    add_index :bestthesisawards, :imno
  end
end

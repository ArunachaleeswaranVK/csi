class AddHighestsponsorshipofcsieventToInstitutes < ActiveRecord::Migration
  def change
    add_column :highestsponsorshipofcsievents, :imno, :string
    add_index :highestsponsorshipofcsievents, :imno
  end
end

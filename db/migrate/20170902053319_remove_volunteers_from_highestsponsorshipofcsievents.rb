class RemoveVolunteersFromHighestsponsorshipofcsievents < ActiveRecord::Migration
  def change
    remove_column :highestsponsorshipofcsievents , :volunteers
  end
end

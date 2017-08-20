class AddHighestsponsorshipofcsieventsIdToSupportdetails < ActiveRecord::Migration
  def change
     add_column :supportforcsievents, :highestsponsorshipofcsievent_id, :integer
  end
end

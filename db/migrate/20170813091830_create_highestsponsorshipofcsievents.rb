class CreateHighestsponsorshipofcsievents < ActiveRecord::Migration
  def change
    create_table :highestsponsorshipofcsievents do |t|

      t.timestamps null: false
    end
  end
end

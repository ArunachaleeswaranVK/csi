class AddFieldToOutsideindiapaperpresentations < ActiveRecord::Migration
  def change
    add_column :outsideindiapaperpresentations, :india_or_outside, :string
  end
end

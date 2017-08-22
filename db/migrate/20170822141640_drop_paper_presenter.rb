class DropPaperPresenter < ActiveRecord::Migration
  def change
    drop_table :paper_presenters
  end
end

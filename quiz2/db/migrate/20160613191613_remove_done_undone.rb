class RemoveDoneUndone < ActiveRecord::Migration
  def change
    remove_column :supports, :done_undone
  end
end

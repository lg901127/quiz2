class ChangeDoneUndoneDatatype < ActiveRecord::Migration
  def change
    change_column :supports, :done_undone, :string, :default => "Undone"
  end
end

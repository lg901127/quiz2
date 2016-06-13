class AddDoneUndoneBack < ActiveRecord::Migration
  def change
    add_column :supports, :done_undone, :string, :default => "Undone"
  end
end

class AddDoneUndoneFeature < ActiveRecord::Migration
  def change
    add_column :supports, :done_undone, :boolean, default: :false
  end
end

class AddEntryIdToGroups < ActiveRecord::Migration
  def change
    add_column :groups, :entry_id, :integer
  end
end

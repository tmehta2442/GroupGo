class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :where_to
      t.string :what_for
      t.timestamps
    end
  end
end

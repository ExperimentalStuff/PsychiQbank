class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.text :tags
      t.text :fulltext
      t.text :qtest

      t.timestamps null: false
    end

    add_index :cards, :tags
    add_index :cards, :fulltext
  end
end

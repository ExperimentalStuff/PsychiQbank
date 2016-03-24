class CreateExamcards < ActiveRecord::Migration
  def change
    create_table :examcards do |t|
      t.integer :exam_id
      t.integer :card_id

      t.timestamps null: false
    end

    add_index :examcards, :exam_id
    add_index :examcards, :card_id
  end
end

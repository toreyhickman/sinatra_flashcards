class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.text :prompt
      t.text :answer
      t.integer :deck_id

      t.timestamps
    end
  end
end

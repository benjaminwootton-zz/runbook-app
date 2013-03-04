class CreateRuns < ActiveRecord::Migration
  def change
    create_table :runs do |t|
      t.integer :id
      t.integer :user_id
      t.integer :book_id
      t.boolean :complete

      t.timestamps
    end
  end
end

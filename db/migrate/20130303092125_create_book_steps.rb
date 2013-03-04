class CreateBookSteps < ActiveRecord::Migration
  def change
    create_table :book_steps do |t|
      t.integer :id
      t.integer :book_id
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end

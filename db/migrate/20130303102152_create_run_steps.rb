class CreateRunSteps < ActiveRecord::Migration
  def change
    create_table :run_steps do |t|
      t.integer :id
      t.integer :run_id
      t.integer :book_step_id

      t.timestamps
    end
  end
end

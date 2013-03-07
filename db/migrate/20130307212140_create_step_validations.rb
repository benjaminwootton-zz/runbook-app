class CreateStepValidations < ActiveRecord::Migration
  def change
    create_table :step_validations do |t|
      t.integer :id
      t.integer :step_id
      t.string :description

      t.timestamps
    end
  end
end

class AddCapturedOutputToRuns < ActiveRecord::Migration
  def change
    add_column :runs, :captured_output, :text
  end
end

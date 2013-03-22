class AddCaptureOutputToSteps < ActiveRecord::Migration
  def change
    add_column :steps, :capture_output, :boolean
  end
end

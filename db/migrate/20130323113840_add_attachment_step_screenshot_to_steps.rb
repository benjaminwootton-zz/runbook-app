class AddAttachmentStepScreenshotToSteps < ActiveRecord::Migration
  def self.up
    change_table :steps do |t|
      t.attachment :step_screenshot
    end
  end

  def self.down
    drop_attached_file :steps, :step_screenshot
  end
end

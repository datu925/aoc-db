class AddAttachmentResumeToActorDetails < ActiveRecord::Migration
  def self.up
    change_table :actor_details do |t|
      t.attachment :resume
    end
  end

  def self.down
    remove_attachment :actor_details, :resume
  end
end

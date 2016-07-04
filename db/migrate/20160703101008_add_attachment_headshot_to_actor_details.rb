class AddAttachmentHeadshotToActorDetails < ActiveRecord::Migration
  def self.up
    change_table :actor_details do |t|
      t.attachment :headshot
    end
  end

  def self.down
    remove_attachment :actor_details, :headshot
  end
end

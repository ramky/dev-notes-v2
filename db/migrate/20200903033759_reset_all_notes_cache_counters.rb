class ResetAllNotesCacheCounters < ActiveRecord::Migration[6.0]
  def change
     Topic.all.each do |topic|
      Topic.reset_counters(topic.id, :notes)
    end
  end
end

class AddCountsToTopics < ActiveRecord::Migration[6.0]
  def change
    add_column :topics, :notes_count, :integer, default: 0, null: false

    Topic.connection.execute <<-SQL
      UPDATE topics
      SET notes_count =
        (SELECT count(*) FROM notes where topic_id = topics.id)
    SQL
  end
end

class AddAccountIdToTopics < ActiveRecord::Migration[6.0]
  def change
    add_column :topics, :account_id, :integer
    add_index :topics, :account_id
  end
end

class CreateTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :types do |t|
      t.string :title
      t.string :additional1

      t.timestamps null: false
    end
  end
end

class CreateAuthenWhitelists < ActiveRecord::Migration[6.0]
  def change
    create_table :authen_whitelists do |t|
      t.string :name

      t.timestamps
    end
  end
end

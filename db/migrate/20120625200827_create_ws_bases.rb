class CreateWsBases < ActiveRecord::Migration
  def change
    create_table :ws_bases do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end

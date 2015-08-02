class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name
      t.string :server_ip
      t.string :server_user

      t.timestamps null: false
    end
  end
end

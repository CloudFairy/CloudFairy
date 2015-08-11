class AddDockerfileToApp < ActiveRecord::Migration
  def change
    add_column :apps, :dockerfile, :text
  end
end

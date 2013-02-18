class RenameTitileToTitleOnPosts < ActiveRecord::Migration
  def up
    rename_column :posts, :titile,:title
  end

  def down
    rename_column :posts, :title, :titile
  end
end

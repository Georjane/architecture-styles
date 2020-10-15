class DropArticles < ActiveRecord::Migration[5.2]
  def change
    drop_table :articles
  end
end

class CreateSectionArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :section_articles do |t|
      t.references :section,   foreign_key: true, null: false
      t.references :article, foreign_key: true, null: false

      t.timestamps
    end
  end
end

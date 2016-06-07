class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.string :category
      t.integer :cost
      t.string :note
      t.string :seller
      t.string :link
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

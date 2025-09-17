class CreateOutfitItems < ActiveRecord::Migration[7.2]
  def change
    create_table :outfit_items do |t|
      t.references :item, null: false, foreign_key: true
      t.references :outfit, null: false, foreign_key: true

      t.timestamps
    end
  end
end

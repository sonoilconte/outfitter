class CreateOutfitItems < ActiveRecord::Migration[5.1]
  def change
    create_table :outfit_items do |t|
      t.belongs_to :item
      t.belongs_to :outfit
      t.timestamps
    end
  end
end

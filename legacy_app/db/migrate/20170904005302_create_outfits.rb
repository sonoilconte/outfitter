class CreateOutfits < ActiveRecord::Migration[5.1]
  def change
    create_table :outfits do |t|
      t.string :name
      t.string :tag

      t.timestamps
    end
  end
end

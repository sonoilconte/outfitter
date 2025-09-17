class CreateItems < ActiveRecord::Migration[7.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :brand
      t.string :category

      t.timestamps
    end
  end
end

class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :brand
      t.string :category

      t.timestamps
    end
  end
end

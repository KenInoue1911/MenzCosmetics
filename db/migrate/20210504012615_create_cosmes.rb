class CreateCosmes < ActiveRecord::Migration[5.2]
  def change
    create_table :cosmes do |t|
      t.string :name
      t.text :caption
      t.string :image_id
      t.integer :user_id

      t.timestamps
    end
  end
end
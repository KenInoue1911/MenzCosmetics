class CreateCosmes < ActiveRecord::Migration[5.2]
  def change
    create_table :cosmes do |t|

      t.timestamps
    end
  end
end

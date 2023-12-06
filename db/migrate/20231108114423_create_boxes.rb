class CreateBoxes < ActiveRecord::Migration[7.0]
  def change
    create_table :boxes do |t|
      t.string :bid
      t.text :description

      t.timestamps
    end
  end
end

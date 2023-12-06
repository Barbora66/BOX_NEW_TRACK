class CreateTags < ActiveRecord::Migration[7.0]
  def change
    create_table :tags do |t|
      t.string :title
      t.string :color
      t.string :icon
      t.references :user, null: true, foreign_key: true

      t.timestamps
    end
  end
end

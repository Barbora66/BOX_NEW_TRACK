class AddUserToBoxes < ActiveRecord::Migration[7.0]
  def change
    add_reference :boxes, :user, null: false, foreign_key: true
  end
end

class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :body, null: false
      t.bigint :user_id, null: false
      t.bigint :artwork_id, null: false

      t.timestamps
    end
    add_index :comments, :user_id
    add_index :comments, :artwork_id
  end
end

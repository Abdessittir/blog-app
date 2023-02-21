class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      t.integer :author_id
      t.integer :post_id

      t.timestamps

      @add_foreign_key :likes, :users
      @add_foreign_key :likes, :posts

      @add_index(:likes, :post_id)
      @add_index(:likes, :author_id)
    end
  end
end
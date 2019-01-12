class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :name
      t.string :teach
      t.string :book
      t.string :el
      

      t.timestamps
    end
  end
end

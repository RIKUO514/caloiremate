class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string     :name,          null: false
      t.string     :text,          null: false
      t.string     :calorie,       null: false 
      t.text       :image,         null: false 
      t.references :user,          foreign_key: true 
      t.timestamps
    end
  end
end


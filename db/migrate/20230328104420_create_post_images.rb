class CreatePostImages < ActiveRecord::Migration[7.0]
  def change
    create_table :post_images do |t|

      t.string :shop_name,  null:false
      t.text :caption
      t.integer :user_id,   null:false
      t.timestamps
    end
  end
end

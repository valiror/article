class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :post_name
      t.string :user_name
      t.string :email
      t.integer :mobile_no

      t.timestamps
    end
  end
end

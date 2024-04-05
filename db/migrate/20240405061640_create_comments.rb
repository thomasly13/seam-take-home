class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :author, null: false 
      t.text :content, null: false 
      t.references :post_id, null: false, index: true, foreign_key: {to_table: :posts}
      t.timestamps
    end
  end
end

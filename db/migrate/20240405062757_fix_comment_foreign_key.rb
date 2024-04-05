class FixCommentForeignKey < ActiveRecord::Migration[7.0]
  def change
    change_table :comments do |t|
      t.rename :post_id_id, :post_id
    end
  end
end

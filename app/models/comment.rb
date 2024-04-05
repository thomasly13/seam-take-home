# == Schema Information
#
# Table name: comments
#
#  id         :bigint           not null, primary key
#  author     :string           not null
#  content    :text             not null
#  post_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Comment < ApplicationRecord
    validates :author, :content, :post_id, presence: true 

    belongs_to :post,
    foreign_key: :post_id,
    class_name: :Post 
end

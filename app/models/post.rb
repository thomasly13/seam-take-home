# == Schema Information
#
# Table name: posts
#
#  id         :bigint           not null, primary key
#  title      :string           not null
#  author     :string           not null
#  content    :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Post < ApplicationRecord
    validates :title, :author, :content, presence: true

    has_many :comments,
    foreign_key: :post_id,
    class_name: :Comment,
    dependent: :destroy
    
end

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
require "test_helper"

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

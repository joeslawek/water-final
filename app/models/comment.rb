# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  body       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :integer
#  post_id    :integer
#
class Comment < ApplicationRecord

  belongs_to(:author, { :required => true, :class_name => "User", :foreign_key => "author_id" })
  belongs_to(:post, { :required => true, :class_name => "WaterPost", :foreign_key => "post_id", :counter_cache => true })



end

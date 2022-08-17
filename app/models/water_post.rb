# == Schema Information
#
# Table name: water_posts
#
#  id             :integer          not null, primary key
#  caption        :string
#  comments_count :integer
#  date           :date
#  likes_count    :integer
#  ounce_count    :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  post_author_id :integer
#
class WaterPost < ApplicationRecord

  has_many(:likes, { :class_name => "Like", :foreign_key => "post_id", :dependent => :destroy })

  has_many(:comments, { :class_name => "Comment", :foreign_key => "post_id", :dependent => :destroy })

end

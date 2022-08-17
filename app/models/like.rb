# == Schema Information
#
# Table name: likes
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  fan_id     :integer
#  post_id    :integer
#
class Like < ApplicationRecord

  belongs_to(:fan, { :required => true, :class_name => "User", :foreign_key => "fan_id" })

  belongs_to(:post, { :required => true, :class_name => "WaterPost", :foreign_key => "post_id", :counter_cache => true })

end

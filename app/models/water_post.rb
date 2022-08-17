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
end

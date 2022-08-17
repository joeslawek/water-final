# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string
#  password_digest :string
#  total_water     :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord

  validates :email, :uniqueness => { :case_sensitive => false }
  validates :email, :presence => true
  has_secure_password

  has_many(:likes, { :class_name => "Like", :foreign_key => "fan_id", :dependent => :destroy })

  has_many(:comments, { :class_name => "Comment", :foreign_key => "author_id", :dependent => :destroy })

  has_many(:water_posts, { :class_name => "WaterPost", :foreign_key => "post_author_id"})

end

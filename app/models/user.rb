class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # ASSOCIATIONS
  has_one :profile, dependent: :destroy

  has_many :recommendations
  has_many :recipients, :through => :recommendations

  has_many :inverse_recommendations, :class_name => "Recommendation", :foreign_key => "recipient_id"
  has_many :inverse_recipients, :through => :inverse_recommendations, :source => :user
  
  has_many :friendships
  has_many :friends, :through => :friendships

  has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
  has_many :inverse_friends, :through => :inverse_friendships, :source => :user

  def has_profile?
    profile.present?
  end

  def full_name
    profile.full_name
  end
end

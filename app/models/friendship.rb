class Friendship < ApplicationRecord
# ASSOCIATIONS
  belongs_to :user
  belongs_to :friend, :class_name => "User"
end

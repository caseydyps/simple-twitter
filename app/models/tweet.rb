class Tweet < ApplicationRecord
  validates_length_of :description, maximum: 140
  validates_presence_of :description
  belongs_to :user, counter_cache: true
  has_many :replies, dependent: :delete_all
  has_many :likes, dependent: :delete_all
  has_many :like_users, through: :likes, source: :user
end

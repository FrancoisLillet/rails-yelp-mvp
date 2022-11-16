class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORIES = ["Chinese", "Italian", "Japanese", "French", "Belgian"]

  validates :name, :address, presence: true
  validates :category, presence: true, inclusion: { :in => CATEGORIES }
end

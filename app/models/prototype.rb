class Prototype < ApplicationRecord


  validates :type_name, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true
  validates :image, presence: true



belongs_to :user
has_one_attached :image






end

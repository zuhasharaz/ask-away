class Question < ApplicationRecord
  validates :content, presence: true
  has_many :answers, dependent: :destroy
  belongs_to :user
end

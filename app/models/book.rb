class Book < ApplicationRecord
  belongs_to :user
  validates :title, presence: { message: " is mandatory" }, length: { maximum: 100 }
  validates :status, presence: { message: " is mandatory" }, inclusion: { in: [ "To Be Read", "Reading", "Done" ], message: "must be To Read, Reading, or Done" }
  validates :author, length: { maximum: 100 }
  validates :pages, numericality: { only_integers: true, message: "should be an integer and greater than 100 ", greater_than: 100 }
end

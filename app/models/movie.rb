class Movie < ApplicationRecord
   has_one_attached :movie
   belongs_to :user
end
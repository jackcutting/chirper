# Chirps Model
class Chirp < ApplicationRecord
  validates :body, presence: true, length: { maximum: 150 }
end

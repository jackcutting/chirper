# Chirps Model
class Chirp < ApplicationRecord
  validates :body, presence: { message: 'Chirp cannot be empty!' },
                   length: { maximum: 150, too_long:
                    'Chirp cannot be more than %{count} characters.' }
end

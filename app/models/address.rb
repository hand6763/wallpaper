class Address < ApplicationRecord
  with_options presence: true do
    validates :municipality, :house_number, :prefecture
    validates :postal_code, format: { with: /\A[0-9]{3}-[0-9]{4}\z/, message: 'is invalid. Include hyphen(-)' }
    validates :phone_number, length: { maximum: 11 }, exclusion: { in: %w[-] }
  end
end

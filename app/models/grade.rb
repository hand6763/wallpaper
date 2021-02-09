class Grade < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '通常グレード' },
    { id: 3, name: 'ハイグレード' },
  ]

  include ActiveHash::Associations
  has_many :estimations
end
class Ceilling < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '屋根も含む' },
    { id: 3, name: '屋根は含まない' },
  ]

  include ActiveHash::Associations
  has_many :estimations
end
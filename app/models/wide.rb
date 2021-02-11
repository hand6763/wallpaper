class Wide < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '６畳' },
    { id: 3, name: '８畳' },
    { id: 4, name: '10畳' },
    { id: 5, name: '20畳' },
  ]

  include ActiveHash::Associations
  has_many :estimations
end
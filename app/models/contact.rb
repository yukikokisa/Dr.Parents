class Contact < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'かかりつけ医' },
    { id: 3, name: '小児救急医療相談窓口' }
  ]
end

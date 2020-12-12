class OnsetTime < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '今さっき' },
    { id: 3, name: '１〜２時間前' },
    { id: 4, name: '半日前' },
    { id: 5, name: '１日前' },
    { id: 6, name: 'それ以前' }
  ]
end
class Symptom < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '発熱' },
    { id: 3, name: '頭をぶつけた' },
    { id: 4, name: '嘔吐' },
    { id: 5, name: '誤飲' },
    { id: 6, name: 'やけど' },
    { id: 7, name: '皮膚のぶつぶつ' }
  ]
end
class Advice <  ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '今は様子を見て、何かあれば受診するよう言われた' },
    { id: 3, name: '今すぐ受診するよう言われた' },
    { id: 4, name: '緊急性はないが、受診をするよう言われた' },
    { id: 5, name: '薬を内服して様子を見るよう言われた' },
    { id: 6, name: '救急車を呼ぶよう言われた'}
  ]
end

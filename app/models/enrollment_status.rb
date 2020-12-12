class EnrollmentStatus < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '未就学児' },
    { id: 3, name: '保育園' },
    { id: 4, name: '幼稚園' }
  ]
end

class Post < ApplicationRecord
  belongs_to :user, optional: true
  has_many :comments

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :symptom
  belongs_to :onset_time
  belongs_to :contact
  belongs_to :advice
  belongs_to :enrollment_status

  with_options presence: true do
    validates :symptom, :onset_time, :contact, :advice, :enrollment_status
    validates :symptom_id, numericality: { other_than: 1 }
    validates :onset_time_id, numericality: { other_than: 1 }
    validates :contact_id, numericality: { other_than: 1 }
    validates :advice_id, numericality: { other_than: 1 }
    validates :child_age, format: { with: /\A[0-9]+\z/ }, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 6 }
    validates :enrollment_status_id, numericality: { other_than: 1 }
  end
end

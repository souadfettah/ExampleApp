class Project < ApplicationRecord
  has_many :tasks, dependent: :destroy
  belongs_to :user

  validates :title, presence: true
  validates :status, inclusion: { in: ['pending', 'in progress', 'completed'] }

  before_save :normalize_title

  scope :active, -> { where(status: 'in progress') }
  scope :completed, -> { where(status: 'completed') }

  private

  def normalize_title
    self.title = title.strip.titleize
  end
end

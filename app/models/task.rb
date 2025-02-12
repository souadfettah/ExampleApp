class Task < ApplicationRecord
  belongs_to :project

  validates :name, presence: true
  validates :status, inclusion: { in: ['pending', 'in progress', 'done'] }

  after_create_commit { TaskNotificationJob.perform_later(self) }
end

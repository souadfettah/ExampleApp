class TaskNotificationJob < ApplicationJob
  queue_as :default

  def perform(task)
    puts "Task '#{task.name}' was created!"
  end
end

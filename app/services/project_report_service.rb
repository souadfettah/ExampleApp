class ProjectReportService
  def initialize(user)
    @user = user
  end

  def generate
    projects = @user.projects.includes(:tasks)
    projects.map do |project|
      {
        title: project.title,
        status: project.status,
        task_count: project.tasks.count
      }
    end
  end
end

# ErrornotResque
require 'resque/project_task'

module ErrorInstanceMethod
  def update_keywords
    Resque.enqueue(Resque::ProjectTask::UpdateKeywords, id.to_s)
  end

  def send_notify
    Resque.enqueue(Resque::ProjectTask::NotifyEmail, id.to_s)
  end

  def update_last_raised_at
    Resque.enqueue(Resque::ProjectTask::UpdateLastRaisedAt, id.to_s)
  end

  def update_nb_errors_in_project
    Resque.enqueue(Resque::ProjectTask::NbErrors, project_id.to_s)
  end
end

Error.send(:include, ErrorInstanceMethod)

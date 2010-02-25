# ErrornotResque
require 'resque'
require 'resque/project_task'

module ErrorInstanceMethod
  def update_keywords
    p 'resque'
    Resque.enqueue(Resque::ProjectTask::UpdateKeywords, id.to_s)
  end

  def send_notify
    p 'resque'
    Resque.enqueue(Resque::ProjectTask::NotifyEmail, id.to_s)
  end

  def update_last_raised_at
    p 'resque'
    Resque.enqueue(Resque::ProjectTask::UpdateLastRaisedAt, id.to_s)
  end

  def update_nb_errors_in_project
    p 'resque'
    Resque.enqueue(Resque::ProjectTask::NbErrors, project_id.to_s)
  end
end

p Error.keys
Error.send(:include, ErrorInstanceMethod)

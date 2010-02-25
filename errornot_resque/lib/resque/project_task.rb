module Resque::ProjectTask


  class NotifyEmail

    @queue = :mail

    def self.perform(error_id)
      error = Error.find(error_id)
      error.send_notify_task
    end
  end

  class NbErrors

    @queue = :update_data

    def self.perform(project_id)
      Project.find(project_id).update_nb_errors
    end
  end

  class UpdateKeywords

    @queue = :update_data

    def self.perform(error_id)
      error = Error.find(error_id)
      error.update_keywords_task
    end
  end

  class UpdateLastRaisedAt

    @queue = :update_data

    def self.perform(error_id)
      error = Error.find(error_id)
      error.update_last_raised_at_task
    end
  end



end

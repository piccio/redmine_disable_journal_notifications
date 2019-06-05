module RedmineDisableJournalNotifications
  module IssuesControllerPatch

    private

    def update_issue_from_params
      return unless super

      current_journal = @issue.current_journal

      if params[:disable_journal_notifications].eql?('1')
        current_journal.notify = false
      end

      true
    end

  end
end
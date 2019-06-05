module RedmineDisableJournalNotifications
  module Hooks
    class ViewIssuesFormDetailsBottomHook < Redmine::Hook::ViewListener
      render_on(:view_issues_form_details_bottom, partial: 'issues/disable_journal_notifications', layout: false)
    end
  end
end
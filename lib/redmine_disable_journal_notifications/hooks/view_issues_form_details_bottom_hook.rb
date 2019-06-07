module RedmineDisableJournalNotifications
  module Hooks
    class ViewIssuesFormDetailsBottomHook < Redmine::Hook::ViewListener
      render_on(:view_issues_form_details_bottom, partial: 'issues/disable_journal_notifications', layout: false,
                locals: { render_condition: Proc.new { |controller| controller.action_name != 'new' } })
    end
  end
end

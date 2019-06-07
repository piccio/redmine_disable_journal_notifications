require 'redmine_disable_journal_notifications/issues_controller_patch'
require 'redmine_disable_journal_notifications/hooks/view_issues_form_details_bottom_hook'

Rails.configuration.to_prepare do
  unless IssuesController.included_modules.include? RedmineDisableJournalNotifications::IssuesControllerPatch
    IssuesController.prepend(RedmineDisableJournalNotifications::IssuesControllerPatch)
  end
end

Redmine::Plugin.register :redmine_disable_journal_notifications do
  name 'Redmine Disable Journal Notifications'
  author 'Roberto Piccini'
  description 'a user who updates a ticket can disable email notifications'
  version '1.0.1'
  url 'https://github.com/piccio/redmine_disable_journal_notifications'
  author_url 'https://github.com/piccio'
end

# Step definitions can be considered "bindings" between features and components.
#Example of step definitions

Then 'on the tracking dashboard, I see {param} activity' do |activity_name|
    dashboard_page = CafeWell::TrackingDashboard::Dashboard.load()
    result = dashboard_page.find_current_activity(activity_name)
    expect(result).not_to be nil
end


# Keep this part short. Step definitions should be relatively easy to read for non-developers
# Most of the logic should be defined in the component so that we can easily call a method and expect it to take care of waiting, button pressing, searching, rescuing and all other actions behind the scenes.

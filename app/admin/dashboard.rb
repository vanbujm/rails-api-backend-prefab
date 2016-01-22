ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }


  page_action :sync_events, :method => :post do
    job_id = SyncEventsWorker.perform_async

    redirect_to admin_dashboard_path, :notice => "Triggered SyncEventsWorker with job id: #{job_id}."
  end

  content title: proc{ "Dashboard" } do
    columns do
      column do
        panel "What is this?" do
          para "This is the back end to the Spacecubed mobile application."
          para "It caches data from Nexudus and serves up a JSON API that the apps consume."
        end
      end
      column do
        panel "System Actions" do
          div do
            link_to "Sync all events",
              admin_dashboard_sync_events_path,
              method: :post,
              class: "button",
              style: "margin: 5px 0"
          end
        end
      end
    end
  end
end

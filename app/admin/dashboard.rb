# frozen_string_literal: true

ActiveAdmin.register_page 'Dashboard' do
  menu priority: 1, label: proc { I18n.t('active_admin.dashboard') }

  content title: proc { I18n.t('active_admin.dashboard') } do
    div class: 'blank_slate_container', id: 'dashboard_default_message' do
    end
    columns do
      column do
        panel 'Últimos usuarios registrados' do
          ul do
            User.last(5).map do |user|
              li link_to(user.name, admin_user_path(user))
            end
          end
        end
      end
      column do
        panel 'Últimos appointments solicitados' do
          ul do
            Appointment.last(5).map do |appointment|
              li link_to(appointment.name, admin_appointment_path(appointment))
            end
          end
        end
      end
      column do
        panel 'Usuarios' do
          ul do
            li "Usuarios registrados: #{User.count}"
            li "Administradores registrados: #{AdminUser.count}"
          end
        end
      end
      column do
        panel 'Appointments' do
          ul do
            li "Appointments Creados: #{Appointment.count}"
          end
        end
      end
    end

    panel "Gráfico" do
      render 'shared/chart'
    end
    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end

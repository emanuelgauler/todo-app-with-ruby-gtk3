module ToDo
  class ApplicationWindow < Gtk::ApplicationWindow
    class << self
      def init
        set_template( :resouce => "/com/iridakos/gtk-todo/resources/ui/application_window.ui" )
      end
    end

    type_register

    def initialize app
      super application: app

      set_title 'GTK+ Simple ToDo'
    end
  end
end

require 'gtk3'
require 'ui/todo/application_window'
module ToDo
  class Application < Gtk::Application
    def initialize
      super 'com.iridakos.gtk-todo', Gio::ApplicationFlags::FLAGS_NONE

      signal_connect :activate do |app|
        window = ToDo::ApplicationWindow.new( app )
=begin
        window = Gtk::ApplicationWindow.new app
        window.set_title 'Gtk+Ruby'
=end
        window.present
      end
    end
  end
end

#!/usr/bin/ruby
require 'fileutils'
require 'gtk3'
require 'ui/todo/application'

resource_xml = File.join(__dir__, 'resources', 'gresources.xml' )
resource_bin = File.join( __dir__, 'gresource.bin' )

system("glib-compile-resources",
       "--target", resource_bin,
       "--sourcedir", File.dirname(resource_xml),
       resource_xml)

resource = Gio::Resource.load resource_bin
Gio::Resources.register resource

at_exit do
  FileUtils.rm_f resource_bin
end

app = ToDo::Application.new
puts app.run

require 'pathname'
require 'carrierwave'
require 'carrierwave/datamapper'

uri = Pathname.new( __FILE__ )
folder = uri.dirname
category = folder.basename.to_s.capitalize

Pathname.glob( "#{uri.dirname}/{uploaders,general}/**/*.rb" ).each do |file|
  path = file.relative_path_from( folder )
  puts "~~> #{category} init, loading Path"
  require_relative file
end

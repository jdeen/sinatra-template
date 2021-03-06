require 'pathname'

uri = Pathname.new( __FILE__ )
folder = uri.dirname
category = folder.basename.to_s.capitalize

Pathname.glob( "#{uri.dirname}/**/*.rb" ).each do |file|
  next if file == uri

  path = file.relative_path_from( folder )
  puts "~~> #{category} init, loading Path"
  require_relative file
end

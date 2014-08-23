require 'gettext'
require 'gettext/tools'

namespace :gettext do 

  desc "Update pot/po file"
  task :update_po do 
    
    location = File.expand_path('../../src/', File.dirname(__FILE__))

    files = nil
    Dir.chdir( location ) do 
      files = Dir.glob("{lib,helpers,views,routes}/**/*.{rb,rhtml,erb,slim}")
      files.concat( Dir.glob( "*.rb" ) )
      
      puts "Files selected are: "
      p files

      GetText.update_pofiles($project, files, "#{$project} #{$version}", po_root: 'i18n')
    end

  end

  desc "Make mo files from PO"
  task :make_mo do
    
  end

end


namespace :assets do 

  desc "Compiles assets to the public folder"
  task :compile do
    Rake::Task["assets:compile:js"]
    Rake::Task["assets:compile:css"]
  end

  namespace :compile do 
    desc "Compiles css to the public folder"
    task :css do
      `sass src/assets/sass/pages:src/public/css/pages`
    end

    desc "Compiles js to the public folder"
    task :js do
      `coffee --compile --ouput src/assets/coffee/pages src/public/js/pages`
    end

    namespace :watch do
      
      desc "Watch CSS"
      task :css do
        `sass --watch src/assets/sass/pages:src/public/css/pages`
      end

      desc "Watch JS"
      task :js do
        `coffee --watch --compile --output src/assets/coffee/pages src/public/js/pages`
      end

    end

  end

end

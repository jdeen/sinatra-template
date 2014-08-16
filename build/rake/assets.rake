
namespace :assets do 

  desc "Compiles assets to the public folder"
  task :compile do
    Rake::Task["assets:compile:css"]
    Rake::Task["assets:compile:js"]
  end

  namespace :compile do 
    desc "Compiles css to the public folder"
    task :css do
      `sass --update src/assets/sass/pages:src/public/css/pages --style compressed`
    end

    desc "Compiles js to the public folder"
    task :js do
      puts "Compiling coffee"
      `coffee -o src/public/js/ -c src/assets/coffee/`
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

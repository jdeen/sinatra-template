
namespace :assets do 

  desc "Compiles assets to the public folder"
  task :compile do
    Rake::Task["assets:compile:js"]
    Rake::Task["assets:compile:css"]
  end

  namespace :compile do 
    desc "Compiles css to the public folder"
    task :css do
    end

    desc "Compiles js to the public folder"
    task :js do
    end
  end

end

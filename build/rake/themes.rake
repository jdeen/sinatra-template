namespace :themes do

  desc "Compile template"
  task :compile_css do
    puts "Name: "
    name = STDIN.gets.chomp

    exists = Dir.exists?("archives/themes/#{name}") && File.exists?("archives/themes/#{name}/build.sh")
    `sh archives/themes/#{name}/build.sh` if exists == true

    message = exists == true ? "Compile script was found and triggered." : "Compile script not found for #{name}"
    puts message
    
    exists = Dir.exists?("archives/themes/#{name}") && File.exists?("archives/themes/#{name}/apply.sh")
    `sh archives/themes/#{name}/apply.sh` if exists == true
    
    message = exists == true ? "Apply script was found and triggered." : "Apply script not found for #{name}"
    puts message
  end

  desc "Apply theme"
  task :apply do
    # Remove the old theme
  end

  # Copy current theme to archive
  desc "Update current theme"
  task :update do
    puts "Name: "
    name = STDIN.gets.chomp
    
    # Directory is ther?
    exists = Dir.exists?("archive/themes/#{name}") && File.exists?("archive/themes/#{name}/backup.sh")
    
    `sh archive/themes/#{name}/backup.sh` if exists
    
    message = exists == true ? "Backup script was found and triggered." : "Backup script not found for #{name}"
    puts message
  end
end

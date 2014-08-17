namespace :users do

  desc 'Update password'
  task update_password: :environment do
    puts "Email: "
    email = STDIN.gets.strip

    user = User.first(email: email)
    
    if user.nil?
      puts "User not existant"
      return
    end

    puts "Password: "
    password = STDIN.gets.strip

    user.password = password
    user.save

    puts "Updated"
  end

end

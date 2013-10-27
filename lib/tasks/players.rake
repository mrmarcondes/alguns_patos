namespace :players do

  desc 'creates all needed domain models'
  task :create => :environment do
    Player.create(name: "Alessandro")
    Player.create(name: "José")
    Player.create(name: "Marco")
  end
end
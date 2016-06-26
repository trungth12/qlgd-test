<<<<<<< HEAD
=======
unless Rails.env.test?
>>>>>>> ca97b789912d706b2e8a194eac8be98cfd61b622
begin
  shards = {:my_shards => {}}
  Tenant.find_each do |shard|
    shards[:my_shards][shard.database] = {:host => shard.host, :adapter => shard.adapter, :database => shard.database, :username => shard.username, :password => shard.password, :port => shard.port}
  end

  Octopus.setup do |config|
    config.environments = [:development, :production]
    config.shards = shards    
  end

rescue ActiveRecord::StatementInvalid => e
  puts e
<<<<<<< HEAD
=======
end
>>>>>>> ca97b789912d706b2e8a194eac8be98cfd61b622
end
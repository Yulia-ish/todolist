$redis = Redis.new(url: ENV.fetch("REDIS_URL", "redis://resis:6379/1"))

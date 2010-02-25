# We need require it before because need database configuration to
# create all index
require Rails.root.to_s + '/config/initializers/mongodb.rb'

require 'resque'
require 'errornot_resque'
resque_config = YAML.load_file(Rails.root.to_s + '/config/resque.yml')
Resque.redis = resque_config[Rails.env]

if Rails.env == 'test'
  # Avoid launch in queue. launch job immediatly in test env
  def Resque.enqueue(klass, *args)
    klass.send(:perform, *args)
  end
end

$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'toclip'
require 'rspec'

RSpec.configure do |config|
  # see https://github.com/rspec/rspec-core/blob/master/lib/rspec/core/configuration.rb for more infomation
end

$LOAD_PATH.unshift File.expand_path('../lib', __dir__)

require 'minitest/autorun'
require 'persistence_detector'

class PersistenceDetectorTest < Minitest::Test
  def test_stub
    testing = PersistenceDetector::Client
    testing.client
    # TODO: implement tests
  end
end

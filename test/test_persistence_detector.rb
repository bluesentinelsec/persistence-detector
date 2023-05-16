$LOAD_PATH.unshift File.expand_path('../lib', __dir__)

require 'minitest/autorun'
require 'persistence_detector'

class PersistenceDetectorTest < Minitest::Test
  def test_hello
    testing = PersistenceDetector::Client
    testing.client
  end

  def test_widget
    widget = PersistenceDetector::Widget.new
    widget.Hello
  end
end

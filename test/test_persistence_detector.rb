require "minitest/autorun"
require "persistence_detector"

class PersistenceDetectorTest < Minitest::Test
  def test_hello
    testing = PersistenceDetector
    testing.hello
  end

  def test_widget
    widget = PersistenceDetector::Widget.new()
    widget.Hello
  end
end

# frozen_string_literal: true

# rubocop:disable Style/GlobalVars

##
# Each detector implementation adds
# an instance of itself to the
# array, $detector_registry.
# The persistence_detector.rb file
# iterates over this registry to invoke
# each applicable detector on the
# host system.
module DetectorRegistry
  $detector_registry = []
end


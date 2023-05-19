# frozen_string_literal: true
# rubocop:disable Style/GlobalVars

require 'persistence_detector/detectors'
require 'persistence_detector/detector_registry'
require 'persistence_detector/detector_implementations/cron'
require 'persistence_detector/log'


##
# PersistenceDetector bridges functionality
# between the CLI and library code
module PersistenceDetector
  ##
  # Client contains methods for invoking persistence
  # detector functionality.
  class Client

    def enable_verbose
      Log.enable_verbose
    end

    def detect_persistence_ttp(ttp_id)

      if ttp_id == 'all' || ttp_id == ''
        $logger.debug('executing all applicable persistence detectors')
        # TODO: only run detectors if platforms match
        $detector_registry.each(&:detect_persistence)

      else
        $detector_registry.each do |d|
          if ttp_id == d.ttp_id
            $logger.debug("executing detector: #{d.ttp_id}")
            # TODO: only run detectors if platforms match
            d.detect_persistence
          else
            $logger.fatal("unable to find detector: #{d.ttp_id}")
          end
        end
      end
    end

    def list_detectors
      $detector_registry.each(&:display_metadata)
    end
  end
end




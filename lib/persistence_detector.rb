# frozen_string_literal: true
# rubocop:disable Style/GlobalVars

require 'persistence_detector/detectors'
require 'persistence_detector/detector_registry'
require 'persistence_detector/log'

require 'persistence_detector/detector_implementations/cron'
require 'persistence_detector/detector_implementations/registry'

##
# PersistenceDetector bridges functionality
# between the CLI and library code
module PersistenceDetector
  ##
  # Client contains methods for invoking persistence
  # detector functionality.
  class Client
    attr_accessor :current_platform

    def initialize
      super
      @current_platform = Gem::Platform::local.os
    end

    def enable_verbose
      Log.enable_verbose
    end

    def detect_persistence_ttp(ttp_id)

      if ttp_id == 'all' || ttp_id == ''
        $logger.debug('executing all applicable persistence detectors')
        $detector_registry.each do |d|
          d.detect_persistence if d.platforms.include? @current_platform
        end

      else
        $detector_registry.each do |d|
          if ttp_id == d.ttp_id
            $logger.debug("executing detector: #{d.ttp_id}")

            if d.platforms.include? @current_platform
              d.detect_persistence
            else
              $logger.fatal("attempted to run #{d.ttp_id} on #{@current_platform}, but detector only works on #{d.platforms}")
            end
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




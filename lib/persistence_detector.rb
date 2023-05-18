# frozen_string_literal: true

require 'logger'

module PersistenceDetector

  class Client
    @logger

    def initialize(logger)
      @logger = logger
    end

    def DetectPersistenceTTP(ttp)
      if ttp == 'all' || ttp == ""
        Detectors::DETECTORS.each do |detector|
          puts("Invoke detector: #{detector}")
        end
      end
    end
    def ListDetectors
      Detectors::DETECTORS.each do |detector|
        puts(detector)
      end
    end
  end
end

require 'persistence_detector/widget'
require 'persistence_detector/detectors'

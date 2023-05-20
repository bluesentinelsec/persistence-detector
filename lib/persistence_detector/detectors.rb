# frozen_string_literal: true

##
# Detectors is essentially an abstract
# base class for concrete detector
# implementations.
module Detectors

  ##
  # Detector is the parent class
  # from which detector subclasses
  # inherit
  class Detector
    attr_accessor :ttp_id, :platforms, :name, :description, :references

    def initialize; end

    def detect_persistence
      # override me
      raise('not implemented')
    end

    def display_metadata
      puts "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
TTP ID: #{@ttp_id}\n
Name: #{@name}\n
Description: #{@description}\n
Platforms: #{@platforms}\n
References: #{@references}\n\n"
    end
  end
end

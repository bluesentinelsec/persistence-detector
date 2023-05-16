# frozen_string_literal: true

module PersistenceDetector
  # Client docs TBD
  class Client
    def self.client
      puts 'hello from PersistenceDetector::Client.client()'
    end
  end
end

require 'persistence_detector/widget'

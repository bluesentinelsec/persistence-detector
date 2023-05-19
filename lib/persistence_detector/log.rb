# frozen_string_literal: true
# rubocop:disable Style/GlobalVars

require 'logger'

##
# Log contains an instance of a
# console logger
module Log
  $logger = Logger.new($stdout)
  $logger.datetime_format = '%Y-%m-%d %H:%M:%S'

  def self.enable_verbose
    $logger.level = :debug
  end
end

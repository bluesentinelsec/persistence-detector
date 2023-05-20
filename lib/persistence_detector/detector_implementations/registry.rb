# frozen_string_literal: true

# rubocop:disable Style/GlobalVars


require 'persistence_detector/detectors'
require 'persistence_detector/detector_registry'
require 'persistence_detector/log'

##
# Cron detects cron job persistence
class RegistryPersistence < Detectors::Detector
  def initialize
    super
    @ttp_id = 'T1547.001'
    @platforms = %w[cygwin mingw mingw32 mswin32 mswin64]
    @name = 'Boot or Logon Autostart Execution: Registry Run Keys / Startup Folder'
    @description = 'Adversaries may achieve persistence by adding a program to a startup folder or referencing it with a Registry run key. Adding an entry to the "run keys" in the Registry or startup folder will cause the program referenced to be executed when a user logs in.'
    @references = ['https://attack.mitre.org/techniques/T1547/001/']
  end

  def detect_persistence
    $logger.info('scanning for registry persistence')
    # TODO: implement logic
  end
end

# register detector instance to system
reg_persistence = RegistryPersistence.new
$detector_registry << reg_persistence

# don't forget to add a 'require <this_module>' line
# to lib/persistence_detector.rb


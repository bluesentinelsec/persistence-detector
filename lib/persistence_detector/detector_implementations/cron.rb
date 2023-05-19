# frozen_string_literal: true

# rubocop:disable Style/GlobalVars


require 'persistence_detector/detectors'
require 'persistence_detector/detector_registry'
require 'persistence_detector/log'

##
# Cron detects cron job persistence
class Cron < Detectors::Detector
  def initialize
    super
    @ttp_id = 'T1053.003'
    @platforms = %w[Linux macOS Windows]
    @name = 'Scheduled Task/Job: Cron'
    @description = 'Adversaries may abuse the cron utility to perform task scheduling for initial or recurring execution of malicious code.'
    @references = ['https://attack.mitre.org/techniques/T1053/003/']
  end

  def detect_persistence
    $logger.info('this is the cron detector')
    # TODO - read the cron file, print jobs
  end
end

# register detector instance to system
cron = Cron.new
$detector_registry << cron


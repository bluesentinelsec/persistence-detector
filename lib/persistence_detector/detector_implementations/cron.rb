# frozen_string_literal: true

# rubocop:disable Style/GlobalVars


require 'persistence_detector/detectors'
require 'persistence_detector/detector_registry'
require 'persistence_detector/log'

require 'colorize'

##
# Cron detects cron job persistence
class Cron < Detectors::Detector
  def initialize
    super
    @ttp_id = 'T1053.003'
    @platforms = %w[cygwin darwin freebsd linux macruby openbsd solaris]
    @name = 'Scheduled Task/Job: Cron'
    @description = 'Adversaries may abuse the cron utility to perform task scheduling for initial or recurring execution of malicious code.'
    @references = ['https://attack.mitre.org/techniques/T1053/003/']
  end

  def detect_persistence
    $logger.info('scanning for cron job persistence'.blue)

    # TODO: if root, check everything, else check current user
    
    if system('crontab -l > /dev/null')
      $logger.warn('Possible cron job persistence identified:'.red)
      out = `crontab -l`
      puts(out.red)
    end
  end
end

# register detector instance to system
cron = Cron.new
$detector_registry << cron


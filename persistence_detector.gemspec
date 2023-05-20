Gem::Specification.new do |s|
  s.name = "persistence-detector"
  s.version = "0.1.1"
  s.platform = Gem::Platform::RUBY
  s.executables << "persistence-detector"
  s.summary = "Persistence Detector is a tool for detecting persistent auto-start programs on Windows, MacOS, and Linux."
  s.description = "Many programs run automatically at system startup. We call these persistent auto-start executables. While persistent executables can be useful, they can also be used by malware to maintain long term access to a compromised system. Persistence Detector is a tool for detecting persistent auto-start programs on Windows, MacOS, and Linux. This information empowers users to identify, detect, and remove unwanted persistent programs from their systems."
  s.authors = ["bluesentinelsec"]
  s.email = "bluesentinel@protonmail.com"
  s.files = ["LICENSE",
             "README.md",
             "Gemfile",
             "lib/persistence_detector.rb",
             "lib/persistence_detector/detector_implementations/cron.rb",
             "lib/persistence_detector/detector_implementations/registry.rb",
             "lib/persistence_detector/detector_registry.rb",
             "lib/persistence_detector/detectors.rb",
             "lib/persistence_detector/log.rb"]
  s.homepage = "https://github.com/bluesentinelsec/persistence-detector"
  s.license = "GPL-3.0-only"
  s.add_runtime_dependency('colorize', '~> 0.8.1')
  s.add_runtime_dependency('logger', '~> 1.5.3')
  s.add_runtime_dependency('optparse', '~> 0.3.1')
end

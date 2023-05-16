Gem::Specification.new do |s|
  s.name        = "persistence-detector"
  s.version     = "0.1.0"
  s.executables << "persistence-detector"
  s.summary     = "Persistence Detector is a tool for detecting persistent auto-start programs on Windows, MacOS, and Linux."
  s.description = "Many programs run automatically at system startup. We call these persistent auto-start executables. While persistent executables can be useful, they can also be used by malware to maintain long term access to a compromised system. Persistence Detector is a tool for detecting persistent auto-start programs on Windows, MacOS, and Linux. This information empowers users to identify, detect, and remove unwanted persistent programs from their systems."
  s.authors     = ["bluesentinelsec"]
  s.email       = "bluesentinel@protonmail.com"
  s.files       = ["lib/persistence_detector.rb", "lib/persistence_detector/widget.rb"]
  s.homepage    = "https://github.com/bluesentinelsec/persistence-detector"
  s.license       = "GNU General Public License Version 3"
end

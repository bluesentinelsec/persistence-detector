# persistence-detector

Many programs run automatically at system startup. 

We call these persistent auto-start executables.

While persistent executables can be useful, they can also be used by malware to maintain long term access to a compromised system. 

Persistence Detector is a tool for detecting persistent auto-start programs on Windows, MacOS, and Linux. 

This information empowers users to identify, detect, and remove unwanted persistent programs from their systems.


## Prerequisites

- [Ruby 3.2](https://www.ruby-lang.org/en/downloads/)

## Installation

Install from RubyGems.org:

```bash
gem install persistence-detector
```

Build from source:

```bash
git clone https://github.com/bluesentinelsec/persistence-detector

cd persistence-detector

bundle install

./bin/persistence-detector --help
```

## Usage

```bash
# 1. Scan system against all persistence TTPs applicable to the host platform:
    persistence-detector

# 2. View available persistence detectors:
    persistence-detector --list

# 3. Scan for a specific persistence TTP (Scheduled Task/Job: Cron):
    persistence-detector --detect T1053.003

4. Enable verbose console logging
    persistence-detector -v
```

## Future Work

This program was created in 5 days as part of Dakota State University's [CSC 842 Security Tool Development](https://catalog.dsu.edu/preview_course_nopop.php?catoid=19&coid=12025) class.

Due to the constrained timeline, we could not implement nearly the features we would have liked.

That said, if time permits, the following features would be pursued:

- Add unit tests and CI/CD
- Simplify OS/platform detection
- Output findings in a standard schema for all detectors
- Continue adding persistence detectors for parity with ATT&CK
- Multiple output formats (formatted console, YAML, XML, CSV)
- Add confidence and risk scores
- Diff analysis
- Check auto start programs against VirusTotal
- Upload results via HTTP POST or AWS S3



# -*- encoding: utf-8 -*-
# stub: synx 0.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "synx"
  s.version = "0.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Mark Larsen"]
  s.date = "2016-05-13"
  s.description = "                       A command-line tool that reorganizes your Xcode project folder to match your Xcode groups\n                       Synx parses your .xcodeproj to build the same group structure out on the file system.\n"
  s.email = ["mark@venmo.com"]
  s.executables = ["synx"]
  s.files = ["bin/synx"]
  s.homepage = "https://github.com/venmo/synx"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "A command-line tool that reorganizes your Xcode project folder to match your Xcode groups"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.6"])
      s.add_development_dependency(%q<rake>, ["~> 10.3"])
      s.add_development_dependency(%q<rspec>, ["~> 2.14"])
      s.add_development_dependency(%q<pry>, ["~> 0.9"])
      s.add_runtime_dependency(%q<clamp>, ["~> 0.6"])
      s.add_runtime_dependency(%q<colorize>, ["~> 0.7"])
      s.add_runtime_dependency(%q<xcodeproj>, ["~> 1.0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.6"])
      s.add_dependency(%q<rake>, ["~> 10.3"])
      s.add_dependency(%q<rspec>, ["~> 2.14"])
      s.add_dependency(%q<pry>, ["~> 0.9"])
      s.add_dependency(%q<clamp>, ["~> 0.6"])
      s.add_dependency(%q<colorize>, ["~> 0.7"])
      s.add_dependency(%q<xcodeproj>, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.6"])
    s.add_dependency(%q<rake>, ["~> 10.3"])
    s.add_dependency(%q<rspec>, ["~> 2.14"])
    s.add_dependency(%q<pry>, ["~> 0.9"])
    s.add_dependency(%q<clamp>, ["~> 0.6"])
    s.add_dependency(%q<colorize>, ["~> 0.7"])
    s.add_dependency(%q<xcodeproj>, ["~> 1.0"])
  end
end

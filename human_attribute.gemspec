# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "human_attribute/version"

Gem::Specification.new do |s|
  s.name        = "human_attribute"
  s.version     = HumanAttribute::VERSION
  s.authors     = ["Alexander Balashov"]
  # s.email       = [""]
  s.homepage    = "http://github.com/divineforest/human_attribute"
  s.summary     = %q{Translate model attribute values from locales}
  # s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "human_attribute"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rake"
  # s.add_runtime_dependency "rest-client"
end

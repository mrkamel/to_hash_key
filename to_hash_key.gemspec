
$:.push File.expand_path("../lib", __FILE__)
require "to_hash_key/version"

Gem::Specification.new do |s|
  s.name        = "to_hash_key"
  s.version     = ToHashKey::VERSION
  s.authors     = ["Benjamin Vetter"]
  s.email       = ["vetter@flakks.com"]
  s.homepage    = ""
  s.summary     = %q{Generate redis-safe hash keys}
  s.description = %q{Generate redis-safe hash keys using SHA1 easily}

  s.rubyforge_project = "to_hash_key"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rake"
end

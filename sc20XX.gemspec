$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name          = "Sc20XX"
  s.version       = "0.0.1"
  s.authors       = ["Tom Hackshaw"]
  s.email         = "tom@tomhackshaw.com"
  s.homepage      = "https://github.com/et0and/sc20XX"
  s.summary       = "Soundcloud in the terminal"
  s.description   = "A SC client written in Ruby"
  s.license       = 'MIT'

  s.bindir        = 'bin'
  s.files         = `git ls-files`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "json", "~> 1.8"
  s.add_dependency "audite", "~> 0.4"
  s.add_dependency "curses", "~> 1.0"

  s.add_development_dependency "bundler", "~> 1.3"
  s.add_development_dependency "rake", "~> 10.5"
  s.add_development_dependency "mocha", "~> 1.1"

  s.extra_rdoc_files = ["README.md"]
end

Gem::Specification.new do |s|
  s.name    = 'gitlab-linguist'
  s.version = `cat VERSION`
  s.summary = "GitLab Language detection"

  s.authors  = ["GitHub", 'Dmitriy Zaporozhets']
  s.homepage = "https://github.com/github/linguist"

  s.files = `git ls-files lib/`.split("\n") << 'VERSION'
  s.executables << 'linguist'
  s.license = 'MIT'

  s.add_dependency 'charlock_holmes',    '~> 0.6.6'
  s.add_dependency 'escape_utils',       '~> 0.2.4'
  s.add_dependency 'mime-types',         '~> 1.19'

  s.add_development_dependency 'mocha'
  s.add_development_dependency 'json'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'yajl-ruby'
end

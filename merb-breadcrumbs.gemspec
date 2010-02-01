# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{merb-breadcrumbs}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Glen Mailer"]
  s.date = %q{2010-02-01}
  s.description = %q{A simple merb plugin to assist in breadcumbing}
  s.email = %q{glen@epigenesys.co.uk}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "lib/merb-breadcrumbs.rb",
     "lib/merb-breadcrumbs/controller_mixin.rb",
     "lib/merb-breadcrumbs/helpers.rb",
     "merb-breadcrumbs.gemspec",
     "spec/merb-breadcumbs_spec.rb",
     "spec/spec.opts",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/glenjamin/merb-breadcrumbs}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{A simple merb plugin to assist in breadcumbing}
  s.test_files = [
    "spec/merb-breadcumbs_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<merb-core>, [">= 1.0.12"])
      s.add_development_dependency(%q<rspec>, [">= 1.2.9"])
    else
      s.add_dependency(%q<merb-core>, [">= 1.0.12"])
      s.add_dependency(%q<rspec>, [">= 1.2.9"])
    end
  else
    s.add_dependency(%q<merb-core>, [">= 1.0.12"])
    s.add_dependency(%q<rspec>, [">= 1.2.9"])
  end
end


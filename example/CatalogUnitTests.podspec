Pod::Spec.new do |s|
  s.name         = "CatalogUnitTests"
  s.version      = "1.0.0"
  s.summary      = "Convention specification for the catalog examples."
  s.homepage     = "https://github.com/material-foundation/cocoapods-catalog-by-convention"
  s.authors      = "Google Inc."
  s.license      = 'Apache 2.0'
  s.source       = { :git => "https://github.com/material-foundation/cocoapods-catalog-by-convention.git", :tag => "v#{s.version}" }
  s.ios.deployment_target = '9.0'
  s.swift_version = '5.0'
  s.requires_arc = true

  # The conventions
  s.source_files = 'components/*/tests/unit/*.{h,m,swift}'
  s.resources = ['components/*/tests/unit/resources/*']
  s.framework = 'XCTest'

  # Component dependencies
  s.dependency 'Resistor'
end

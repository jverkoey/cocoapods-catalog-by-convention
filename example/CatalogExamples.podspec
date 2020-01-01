Pod::Spec.new do |s|
  s.name         = "CatalogExamples"
  s.version      = "1.0.0"
  s.summary      = "Convention for catalog examples."
  s.homepage     = "https://github.com/material-foundation/cocoapods-catalog-by-convention"
  s.authors      = "Google Inc."
  s.license      = 'Apache 2.0'
  s.source       = { :git => "https://github.com/material-foundation/cocoapods-catalog-by-convention.git", :tag => "v#{s.version}" }
  s.ios.deployment_target = '9.0'
  s.swift_version = '5.0'
  s.requires_arc = true

  # Conventions
  s.source_files = 'components/*/examples/*.{h,m,swift}'
  s.public_header_files = 'components/*/examples/*.h'
  s.resources = ['components/*/examples/resources/*']
end

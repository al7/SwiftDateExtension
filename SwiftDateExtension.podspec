Pod::Spec.new do |s|

  s.name         = "SwiftDateExtension"
  s.version      = "0.0.6"
  s.summary      = "Date extension in Swift"
  s.license      = "MIT"
  s.homepage     = "http://github.com/al7/SwiftDateExtension"
  s.author       = { "Alex Leite" => "admin@al7dev.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/al7/SwiftDateExtension.git", :tag => "0.0.6" }
  s.source_files = "DateExtension/DateExtension.swift"
  s.requires_arc = true
  s.xcconfig = {
    'SWIFT_VERSION' => '3.0'
  }
end

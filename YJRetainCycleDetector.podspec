#
# Be sure to run `pod lib lint YJRetainCycleDetector.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YJRetainCycleDetector'
  s.version          = '0.1.5'
  s.summary          = 'Library that helps with detecting retain cycles in iOS apps'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  Library that helps with detecting retain cycles in iOS apps . Library that helps with detecting retain cycles in iOS apps
                       DESC

  s.homepage         = 'https://github.com/fyaojie/YJRetainCycleDetector'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '562925462@qq.com' => 'yaojie.feng@symbio.com' }
  s.source           = { :git => 'https://github.com/fyaojie/YJRetainCycleDetector.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'YJRetainCycleDetector/Classes/**/*'
  
  # s.resource_bundles = {
  #   'YJRetainCycleDetector' => ['YJRetainCycleDetector/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
#   s.dependency 'fishhook', '~> 0.2'
   
   s.library = 'c++'

   mrr_files = [
    'YJRetainCycleDetector/Classes/Associations/FBAssociationManager.h',
    'YJRetainCycleDetector/Classes/Associations/FBAssociationManager.mm',
    'YJRetainCycleDetector/Classes/Layout/Blocks/FBBlockStrongLayout.h',
    'YJRetainCycleDetector/Classes/Layout/Blocks/FBBlockStrongLayout.m',
    'YJRetainCycleDetector/Classes/Layout/Blocks/FBBlockStrongRelationDetector.h',
    'YJRetainCycleDetector/Classes/Layout/Blocks/FBBlockStrongRelationDetector.m',
    'YJRetainCycleDetector/Classes/Layout/Classes/FBClassStrongLayoutHelpers.h',
    'YJRetainCycleDetector/Classes/Layout/Classes/FBClassStrongLayoutHelpers.m',
  ]

  files = Pathname.glob("YJRetainCycleDetector/Classes/**/*")
  files = files.map {|file| file.to_path}
  files = files.reject {|file| mrr_files.include?(file)}

  s.requires_arc = files.sort
  s.framework = "Foundation", "CoreGraphics", "UIKit"
  
  s.public_header_files = [
    'YJRetainCycleDetector/Classes/Detector/FBRetainCycleDetector.h',
    'YJRetainCycleDetector/Classes/Associations/FBAssociationManager.h',
    'YJRetainCycleDetector/Classes/Graph/FBObjectiveCBlock.h',
    'YJRetainCycleDetector/Classes/Graph/FBObjectiveCGraphElement.h',
    'YJRetainCycleDetector/Classes/Graph/Specialization/FBObjectiveCNSCFTimer.h',
    'YJRetainCycleDetector/Classes/Graph/FBObjectiveCObject.h',
    'YJRetainCycleDetector/Classes/Graph/FBObjectGraphConfiguration.h',
    'YJRetainCycleDetector/Classes/Filtering/FBStandardGraphEdgeFilters.h',
  ]
  
end

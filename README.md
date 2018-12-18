# Intilery iOS Example

To develop with the Intilery iOS SDK

 * Clone the iOS SDK [https://github.com/Intilery/intilery-ios]
 * Clone the iOS Example App [https://github.com/Intilery/intilery-ios-example]
 * Install CocoaPods [https://cocoapods.org/] `gem install cocoapods`
 * Install Pods `pod install`
 * Update Pods `pod update`
 * Start XCode `open HelloIntilery.xcworkspace`
 * add path to your local iOS SDK in the example apps pod file
 
```ruby
# Uncomment this line to define a global platform for your project
# platform :ios, '9.0'
 
target 'HelloIntilery' do
  # Uncomment this line if you're using Swift or would like to use dynamic frameworks
  # use_frameworks!
 
  # Pods for HelloIntilery
  pod 'Intilery', :path => 'PATH TO LOCAL SDK'
 
  target 'HelloIntileryTests' do
    inherit! :search_paths
    # Pods for testing
  end
end
```

 * Clean SDK build folder
 * Build the SDK in XCode
 * Run the example app

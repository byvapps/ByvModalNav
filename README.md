# ByvModalNav

[![CI Status](http://img.shields.io/travis/Adrian/ByvModalNav.svg?style=flat)](https://travis-ci.org/Adrian/ByvModalNav)
[![Version](https://img.shields.io/cocoapods/v/ByvModalNav.svg?style=flat)](http://cocoapods.org/pods/ByvModalNav)
[![License](https://img.shields.io/cocoapods/l/ByvModalNav.svg?style=flat)](http://cocoapods.org/pods/ByvModalNav)
[![Platform](https://img.shields.io/cocoapods/p/ByvModalNav.svg?style=flat)](http://cocoapods.org/pods/ByvModalNav)

**ByvModalNav**
ByvModalNav is an UINavigationController with auto close button. It's developed to quickly show modal views with close button.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

ByvModalNav is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "ByvModalNav"
```

## Usage

Use as a normal UINavigationController and present it modally

    let nav = ByvModalNav.init(rootViewController: controller)
    self.present(nav, animated: true, completion: nil)

If `onlyInRoot:Bool = true` (default) the close button is added as leftBarButtonItem only in the root view controller. 
To dismiss the view you must need to back to the root view on the navigation controller

If `onlyInRoot:Bool = false` the close button is added as rightBarButtonItem in all view controllers. 
The modal navigation can be dismiss in any view controller

## Handlers

Exists 3 nullable handler var

`shouldDismissHandler:(() -> Bool)?` allow dismiss or not. If It's nil the view controller should be dismissed.
`willDismissHandler:(() -> Void)?` It's called before the view controller is going to be dismissed
`didDismissHandler:(() -> Void)?` It's called after the view controller dismissed

## Author

Adrian, adrian@byvapps.com

## License

ByvModalNav is available under the MIT license. See the LICENSE file for more info.

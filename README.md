# FAnimationChangingViewController
![from swift 5.0](https://img.shields.io/badge/swift-5.0-orange.svg)
![from ios 13](https://img.shields.io/badge/ios-13-red.svg)
[![Cocoapods Compatible](https://img.shields.io/cocoapods/v/FAnimationChangingViewController.svg)](https://img.shields.io/cocoapods/v/FAnimationChangingViewController.svg)
![SPM supported](https://img.shields.io/badge/SPM-supported-green)


## Description
A description of this package.
This package have two functions: finePushViewController and finePopViewController, they are writen as extension for UINavigationController and allows to push to new/pop ViewController with choosing easy build in animations.

### Note
Compatible FROM swift 5, and ios 13

### Functions Introduction

```swift
public func finePushViewController(_ controller: UIViewController,
                                animationType: CATransitionType = .push,
                                animationSubType: CATransitionSubtype? = nil,
                                duration: CFTimeInterval = 0.4)
public func finePopViewController(popToRoot: Bool,
                               animationType: CATransitionType = .push,
                               animationSubType: CATransitionSubtype? = nil,
                               duration: CFTimeInterval = 0.4)
```

## Installation

### Cocoapods

[Cocoapods](https://cocoapods.org/#install) To use FAnimationChangingViewController with CocoaPods, add it in your `Podfile`. 
Close your project. Go to your directory with project in terminal ➡️ paste `pod init` ➡️ change Podfile - add ⬇️ line before "end" in file
```ruby
pod 'FAnimationChangingViewController'
```
✅ `pod install` in terminal
use "<YourProjectName>.xcworkspace"

### Swift Package Manager
The [Swift Package Manager](https://swift.org/package-manager/) is a tool for managing the distribution of Swift code.

```swift
dependencies: [
    .package(url: "https://github.com/ninjaprox/FAnimationChangingViewController.git")
]
```

## Usage

Firstly, import `FAnimationChangingViewController`.

```swift
import FAnimationChangingViewController
```

### Initialization

You need to use `UINavigationController`, initiate for example in `AppDelegate.swift` as in my Example folder and now you can use it instead of `pushToViewController(...)` or `popViewController`

```swift
navigationController?.finePushViewController(ExampleFineViewController(), animationType: .moveIn, animationSubType: .fromBottom, duration: 1.0)

navigationController?.finePushViewController(ExampleFineViewController(), animationSubType: .fromTop)

navigationController?.finePopViewController(popToRoot: false, animationType: .fade)
```

## License

The MIT License (MIT)

Copyright (c) 2022 Heorhii Savoiskyi d3f0ld@proton.me

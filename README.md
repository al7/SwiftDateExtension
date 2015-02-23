Swift Date Extension
=====================

### About

I wrote this little project a while ago, right after Apple announced Swift on WWDC'14. It was my first try of extensions in Swift. This is an extension to the *NSDate* class. It includes some convenience methods that make it easier to manipulate and calculate time units to *NSDates* without having to use *NSDateComponents* directly.

Here are a few examples of the things you can do:

```swift
//-- Adding time units:

let date1: NSDate = NSDate().plusMonths(2).minusDays(5).plusSeconds(5)
let date2: NSDate = NSDate().plusYears(1).minusMonths(6)

//-- Calculating difference between dates:

let weeksBetween = NSDate.monthsBetween(date1: someDate, date2: someOtherDate)
let monthsBetween = NSDate.weeksBetween(date1: someDate, date2: someOtherDate)

```

Feel free to use this sample however you see fit. I hope you find this helpful when venturing through this great little surprise from Apple.

### How to use

You can simply include the ``DateExtension.swift`` file to your project. To make your life easier, you can also use CocoaPods. Simply add the following line to your Podfile:

```
pod 'SwiftDateExtension'
```

####License

This component is available under MIT license.

Swift Date Extension
=====================

### About

I wrote this little project a while ago, right after Apple announced Swift on WWDC'14. It was my first try of extensions in Swift. I decided to publish and add more goodies to it as time went by. This is an extension to the *Date* class. It includes some convenience methods that make it easier to manipulate and calculate time units to *Date* without having to use *DateComponents* directly.

Here are a few examples of the things you can do:

```swift
//-- Adding time units:

let date1 = Date().plus(months: 2).minus(days: 5).plus(seconds: 5)
let date2 = Date().plus(years: 1).minus(months: 6)

//-- Calculating difference between dates:

let weeksBetween = Date.monthsBetween(date1: someDate, date2: someOtherDate)
let monthsBetween = Date.weeksBetween(date1: someDate, date2: someOtherDate)

//-- Direct access to calendar units:

let year = Date().year
let month = Date().month
let seconds = Date().seconds

//-- Comparing two dates:

let now = Date()
let then = now.minus(days: 1)

let comparison1: Bool = now.isGreaterThan(then) //-- true
let comparison2: Bool = now.isLessThan(then) //-- false

```

I'm trying to keep this up to date. Right now, it's fully compliant to **Swift 3.0**. Feel free to use this sample however you see fit. I hope you find this helpful when venturing through Swift. 

### How to use

You can simply include the ``DateExtension.swift`` file to your project. To make your life easier, you can also use CocoaPods. Simply add the following line to your Podfile:

```
pod 'SwiftDateExtension'
```

#### License

This component is available under MIT license.

/*

Copyright (c) 2015 - Alex Leite (al7dev)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

*/

import Foundation

public extension NSDate {
        
    public func plusSeconds(s: UInt) -> NSDate {
        return self.addComponentsToDate(seconds: Int(s), minutes: 0, hours: 0, days: 0, weeks: 0, months: 0, years: 0)
    }
    
    public func minusSeconds(s: UInt) -> NSDate {
        return self.addComponentsToDate(seconds: -Int(s), minutes: 0, hours: 0, days: 0, weeks: 0, months: 0, years: 0)
    }
    
    public func plusMinutes(m: UInt) -> NSDate {
        return self.addComponentsToDate(seconds: 0, minutes: Int(m), hours: 0, days: 0, weeks: 0, months: 0, years: 0)
    }
    
    public func minusMinutes(m: UInt) -> NSDate {
        return self.addComponentsToDate(seconds: 0, minutes: -Int(m), hours: 0, days: 0, weeks: 0, months: 0, years: 0)
    }
    
    public func plusHours(h: UInt) -> NSDate {
        return self.addComponentsToDate(seconds: 0, minutes: 0, hours: Int(h), days: 0, weeks: 0, months: 0, years: 0)
    }
    
    public func minusHours(h: UInt) -> NSDate {
        return self.addComponentsToDate(seconds: 0, minutes: 0, hours: -Int(h), days: 0, weeks: 0, months: 0, years: 0)
    }
    
    public func plusDays(d: UInt) -> NSDate {
        return self.addComponentsToDate(seconds: 0, minutes: 0, hours: 0, days: Int(d), weeks: 0, months: 0, years: 0)
    }
    
    public func minusDays(d: UInt) -> NSDate {
        return self.addComponentsToDate(seconds: 0, minutes: 0, hours: 0, days: -Int(d), weeks: 0, months: 0, years: 0)
    }
    
    public func plusWeeks(w: UInt) -> NSDate {
        return self.addComponentsToDate(seconds: 0, minutes: 0, hours: 0, days: 0, weeks: Int(w), months: 0, years: 0)
    }
    
    public func minusWeeks(w: UInt) -> NSDate {
        return self.addComponentsToDate(seconds: 0, minutes: 0, hours: 0, days: 0, weeks: -Int(w), months: 0, years: 0)
    }
    
    public func plusMonths(m: UInt) -> NSDate {
        return self.addComponentsToDate(seconds: 0, minutes: 0, hours: 0, days: 0, weeks: 0, months: Int(m), years: 0)
    }
    
    public func minusMonths(m: UInt) -> NSDate {
        return self.addComponentsToDate(seconds: 0, minutes: 0, hours: 0, days: 0, weeks: 0, months: -Int(m), years: 0)
    }
    
    public func plusYears(y: UInt) -> NSDate {
        return self.addComponentsToDate(seconds: 0, minutes: 0, hours: 0, days: 0, weeks: 0, months: 0, years: Int(y))
    }
    
    public func minusYears(y: UInt) -> NSDate {
        return self.addComponentsToDate(seconds: 0, minutes: 0, hours: 0, days: 0, weeks: 0, months: 0, years: -Int(y))
    }
    
    private func addComponentsToDate(seconds sec: Int, minutes min: Int, hours hrs: Int, days d: Int, weeks wks: Int, months mts: Int, years yrs: Int) -> NSDate {
        let dc: NSDateComponents = NSDateComponents()
        dc.second = sec
        dc.minute = min
        dc.hour = hrs
        dc.day = d
        dc.weekOfYear = wks
        dc.month = mts
        dc.year = yrs
        return NSCalendar.currentCalendar().dateByAddingComponents(dc, toDate: self, options: [])!
    }
    
    public func midnightUTCDate() -> NSDate {
        let dc: NSDateComponents = NSCalendar.currentCalendar().components([.Year, .Month, .Day], fromDate: self)
        dc.hour = 0
        dc.minute = 0
        dc.second = 0
        dc.nanosecond = 0
        dc.timeZone = NSTimeZone(forSecondsFromGMT: 0)
        
        return NSCalendar.currentCalendar().dateFromComponents(dc)!
    }
    
    public class func secondsBetween(date1 d1:NSDate, date2 d2:NSDate) -> Int {
        let dc = NSCalendar.currentCalendar().components(NSCalendarUnit.Second, fromDate: d1, toDate: d2, options:[])
        return dc.second
    }
    
    public class func minutesBetween(date1 d1: NSDate, date2 d2: NSDate) -> Int {
        let dc = NSCalendar.currentCalendar().components(NSCalendarUnit.Minute, fromDate: d1, toDate: d2, options: [])
        return dc.minute
    }
    
    public class func hoursBetween(date1 d1: NSDate, date2 d2: NSDate) -> Int {
        let dc = NSCalendar.currentCalendar().components(NSCalendarUnit.Hour, fromDate: d1, toDate: d2, options: [])
        return dc.hour
    }
    
    public class func daysBetween(date1 d1: NSDate, date2 d2: NSDate) -> Int {
        let dc = NSCalendar.currentCalendar().components(NSCalendarUnit.Day, fromDate: d1, toDate: d2, options: [])
        return dc.day
    }
    
    public class func weeksBetween(date1 d1: NSDate, date2 d2: NSDate) -> Int {
        let dc = NSCalendar.currentCalendar().components(NSCalendarUnit.WeekOfYear, fromDate: d1, toDate: d2, options: [])
        return dc.weekOfYear
    }
    
    public class func monthsBetween(date1 d1: NSDate, date2 d2: NSDate) -> Int {
        let dc = NSCalendar.currentCalendar().components(NSCalendarUnit.Month, fromDate: d1, toDate: d2, options: [])
        return dc.month
    }
    
    public class func yearsBetween(date1 d1: NSDate, date2 d2: NSDate) -> Int {
        let dc = NSCalendar.currentCalendar().components(NSCalendarUnit.Year, fromDate: d1, toDate: d2, options: [])
        return dc.year
    }
    
    //MARK- Comparison Methods
    
    public func isGreaterThan(date: NSDate) -> Bool {
        return (self.compare(date) == .OrderedDescending)
    }
    
    public func isLessThan(date: NSDate) -> Bool {
        return (self.compare(date) == .OrderedAscending)
    }
    
    //MARK- Computed Properties
    
    public var day: UInt {
        return UInt(NSCalendar.currentCalendar().component(.Day, fromDate: self))
    }
    
    public var month: UInt {
        return UInt(NSCalendar.currentCalendar().component(.Month, fromDate: self))
    }
    
    public var year: UInt {
        return UInt(NSCalendar.currentCalendar().component(.Year, fromDate: self))
    }
    
    public var hour: UInt {
        return UInt(NSCalendar.currentCalendar().component(.Hour, fromDate: self))
    }
    
    public var minute: UInt {
        return UInt(NSCalendar.currentCalendar().component(.Minute, fromDate: self))
    }
    
    public var second: UInt {
        return UInt(NSCalendar.currentCalendar().component(.Second, fromDate: self))
    }
}
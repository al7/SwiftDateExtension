//
//  Created by Alex Leite on 6/5/14.
//  Copyright (c) 2014 al7dev. All rights reserved.
//

import XCTest

class DateExtensionTests: XCTestCase {
    var today: Date?
    var fixedDate: Date?
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        today = Date()
        
        var dateComponents = DateComponents()
        dateComponents.month = 10
        dateComponents.day = 10
        dateComponents.year = 2010
        dateComponents.hour = 10
        dateComponents.minute = 10
        dateComponents.second = 10
        dateComponents.calendar = NSCalendar.current
        fixedDate = dateComponents.date
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        today = nil
        fixedDate = nil
        
        super.tearDown()
    }

    func testSecondsBetween() {
        let testDate = today!.plus(minutes:1)
        let secsBetween = Date.secondsBetween(date1: today!, date2: testDate)
        XCTAssert(secsBetween == 60, "There should be 60 seconds between today and test date")
    }
    
    func testMinutesBetween() {
        let testDate = today!.plus(hours:2)
        let minBetween = Date.minutesBetween(date1: today!, date2: testDate)
        XCTAssert(minBetween == 120, "There should be 120 minutes between today and test date")
    }
    
    func testHoursBetween() {
        let testDate = today!.plus(days:1)
        let hoursBetween = Date.hoursBetween(date1: today!, date2: testDate)
        XCTAssert(hoursBetween == 24, "There should be 24 hours between today and test date")
    }
    
    func testDaysBetween() {
        let testDate = today!.plus(weeks:1)
        let daysBetween = Date.daysBetween(date1: today!, date2: testDate)
        XCTAssert(daysBetween == 7, "There should be 7 days between today and test date")
    }
    
    func testWeeksBetween() {
        let testDate = today!.plus(days:16)
        let weeksBetween = Date.weeksBetween(date1: today!, date2: testDate)
        XCTAssert(weeksBetween == 2, "There should be 2 weeks between today and test date")
    }
    
    func testMonthsBetween() {
        let testDate = today!.plus(days:65)
        let monthsBetween = Date.monthsBetween(date1: today!, date2: testDate)
        XCTAssert(monthsBetween == 2, "There should be 2 months between today and test date")
    }
    
    func testMonthsBetween2() {
        let testDate = today!.plus(months:2).minus(days:3)
        let monthsBetween = Date.monthsBetween(date1: today!, date2: testDate)
        XCTAssert(monthsBetween == 1, "There should be 1 month between today and test date")
    }
    
    func testYearsBetween() {
        let testDate = today!.plus(months:28)
        let yearsBetween = Date.yearsBetween(date1: today!, date2: testDate)
        XCTAssert(yearsBetween == 2, "There should be 2 years between today and test date")
    }
    
    func testDirectMonth() {
        var month: UInt = 0
        if let date = fixedDate {
            month = date.month
        }
        XCTAssert(month == 10, "Month should be 10")
    }
    
    func testDirectDay() {
        var day: UInt = 0
        if let date = fixedDate {
            day = date.day
        }
        XCTAssert(day == 10, "Day should be 10")
    }
    
    func testDirectYear() {
        var year: UInt = 0
        if let date = fixedDate {
            year = date.year
        }
        XCTAssert(year == 2010, "Year should be 2010")
    }
    
    func testDirectHour() {
        var hour: UInt = 0
        if let date = fixedDate {
            hour = date.hour
        }
        XCTAssert(hour == 10, "Month should be 10")
    }
    
    func testDirectMinute() {
        var minute: UInt = 0
        if let date = fixedDate {
            minute = date.minute
        }
        XCTAssert(minute == 10, "Minute should be 10")
    }
    
    func testDirectSecond() {
        var second: UInt = 0
        if let date = fixedDate {
            second = date.second
        }
        XCTAssert(second == 10, "Second should be 10")
    }
    
    func testGreaterComparison() {
        let now = Date()
        let then = now.minus(days:1)
        let greater = now.isGreaterThan(then)
        XCTAssert(greater == true, "Now should be greater than then")
    }
    
    func testLessComparison() {
        let now = Date()
        let tomorrow = now.plus(days:1)
        let lessThan = now.isLessThan(tomorrow)
        XCTAssert(lessThan == true, "Now should be less than tomorrow")
    }
}

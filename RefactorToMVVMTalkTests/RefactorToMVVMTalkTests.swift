//
//  RefactorToMVVMTalkTests.swift
//  RefactorToMVVMTalkTests
//
//  Created by David on 5/27/21.
//

import XCTest
@testable import RefactorToMVVMTalk

class RefactorToMVVMTalkTests: XCTestCase {

    func testCourseViewModelUnder40() {
        
        let course = Course(id: 1, name: "Course Name", numberOfLessons: 10)
        let courseViewModel = CourseViewModel(course: course)
        
        XCTAssertEqual(course.name, courseViewModel.name)
        
        // if someone updates the viewModel strings, test will fail
        XCTAssertEqual("Lessons: \(course.numberOfLessons)", courseViewModel.detailTextString)
        XCTAssertEqual(.none, courseViewModel.accessoryType)
        
    }
    
    func testCourseViewModel40Plus() {
        
        let course = Course(id: 1, name: "Course Name", numberOfLessons: 45)
        let courseViewModel = CourseViewModel(course: course)
        
        XCTAssertEqual(course.name, courseViewModel.name)
        
        // if someone updates the viewModel strings, test will fail
        XCTAssertEqual("Lessons 40+ Check it Out!", courseViewModel.detailTextString)
        XCTAssertEqual(.detailDisclosureButton, courseViewModel.accessoryType)
        
    }
}

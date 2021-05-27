//
//  CoursesViewModel.swift
//  RefactorToMVVMTalk
//
//  Created by David on 5/27/21.
//

import UIKit

struct CourseViewModel {
    
    let name: String
    let detailTextString: String
    let accessoryType: UITableViewCell.AccessoryType
    
    init(course: Course) {
        self.name = course.name
        
        // Here is where business logic happens so it is not done in the view(custom cell)
        if course.numberOfLessons > 39 {
            
            // If these strings are changed, out test cases will fail
            detailTextString = "Lessons 40+ Check it Out!"
            accessoryType = .detailDisclosureButton
        } else {
            detailTextString = "Lessons: \(course.numberOfLessons)"
            accessoryType = .none
        }
    }
    
}

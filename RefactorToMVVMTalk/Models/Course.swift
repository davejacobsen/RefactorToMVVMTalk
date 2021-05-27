//
//  Course.swift
//  RefactorToMVVMTalk
//
//  Created by David on 5/27/21.
//

import Foundation

struct Course: Decodable {
    let id: Int
    let name: String
    let numberOfLessons: Int
}

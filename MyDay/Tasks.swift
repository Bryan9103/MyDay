//
//  Tasks.swift
//  MyDay
//
//  Created by Bryan Andersen on 2023/10/13.
//

import Foundation

struct Tasks: Identifiable{
    let id = UUID()
    let courseName: String
    let courseDay: Int
    let courseInstructor: String
    let courseCredit: Int
    let courseClass: String
}

extension Tasks{
    static let defaultTask = Tasks(courseName: "無", courseDay: 1, courseInstructor: "無", courseCredit: 0, courseClass: "無")
}

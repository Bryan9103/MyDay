//
//  CourseDetail.swift
//  MyDay
//
//  Created by Bryan Andersen on 2023/10/21.
//

import Foundation

struct CourseDetail: Identifiable{
    let id = UUID()
    let courseName: String
    let courseInstructor: String
    let instructorContactInfo: [String]
    let teachingAssistant: [[String]]
    let courseDepartment: String
    let courseID: String
    let courseGrade: String
    let enrolledStudent: Int
    let courseType: String
    let courseTime: [Int]
    let courseCredits: Int
    let courseClass: [String]
    let courseObjective: [String]
    let preCourse: [String]
    let courseSyllabus: [String]
    let courseGradingSystem: [String]
}

extension CourseDetail{
    static let defaultCourseDetail = CourseDetail(courseName: "無",courseInstructor: "無",instructorContactInfo: ["無"], teachingAssistant: [["無"]], courseDepartment: "無", courseID: "-", courseGrade: "-", enrolledStudent: 0, courseType: "-", courseTime: [0], courseCredits: 0, courseClass: ["-"], courseObjective: ["無"], preCourse: ["無"], courseSyllabus: ["無"], courseGradingSystem: ["無"])
}

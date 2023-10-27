//
//  ProfileData.swift
//  MyDay
//
//  Created by Bryan Andersen on 2023/10/22.
//

import Foundation
struct ProfileData: Identifiable{
    let id = UUID() //or let id: String{name}
    let studentName: String
    let studentBirthday: Date
    let studentGender: String
    let studentID: String
    let studentEmail: String
    let studentDepartment: String
    let studentMajor: String
    let studentGrade: String
    let semesterCredits: Int
    let currentCredits: Int
    let majorCredits: Int
}

extension ProfileData{
    static let defaultProfileData = ProfileData(studentName: "無", studentBirthday: Date.now, studentGender: "無", studentID: "無", studentEmail: "無", studentDepartment: "無", studentMajor: "無", studentGrade: "-", semesterCredits: 0, currentCredits: 0, majorCredits: 0)
}

//
//  ToDoListView.swift
//  MyDay
//
//  Created by Bryan Andersen on 2023/10/13.
//

import SwiftUI

struct ToDoRow: View {
    let courseInfo : Tasks
    var body: some View {
        let todayWeekday = Calendar.current.component(.weekday, from: Date.now) - 1
        let courseDay = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
        
        HStack(spacing: 5.0){ //creates horizontal stack
            ZStack{ //creates Z-axis stack
                if(todayWeekday == courseInfo.courseDay){
                    Rectangle() //creates shape
                        .fill(.green)
                        .frame(width: 100, height: 65)
                    Text("Today")
                        .font(.body)
                        .fontWeight(.bold)
                }
                else if(courseInfo.courseDay - todayWeekday == 1){
                    Rectangle() //creates shape
                        .fill(.cyan)
                        .frame(width: 100, height: 65)
                    Text("Tomorrow")
                }
                else{
                    Rectangle() //creates shape
                        .fill(.gray)
                        .frame(width: 100, height: 65)
                    Text("\(courseDay[courseInfo.courseDay])")
                }
            }
            
            VStack(alignment: .leading){ //creates vertical stack
                Text("Course: \(courseInfo.courseName)")
                    .lineLimit(1) //limits line number
                    Text("Instructor: \(courseInfo.courseInstructor)")
                    Text("Class: \(courseInfo.courseClass)")
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    ToDoRow(courseInfo: Tasks.defaultTask)
}

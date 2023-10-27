//
//  ToDoList.swift
//  MyDay
//
//  Created by Bryan Andersen on 2023/10/14.
//

import SwiftUI
import AVKit


struct ToDoList: View {
    let courseTaken = [Tasks(courseName: "羽球(初)", courseDay: 1, courseInstructor: "許振明", courseCredit: 0, courseClass: "GYM201"), Tasks(courseName: "資料庫系統", courseDay: 1, courseInstructor: "張雅惠", courseCredit: 3, courseClass: "INS101"), Tasks(courseName: "大學歷史(一)(歷史)", courseDay: 1, courseInstructor: "王俊昌", courseCredit: 2, courseClass: "BOH402"), Tasks(courseName: "資訊安全實務與管理", courseDay: 2, courseInstructor: "林韓禹", courseCredit: 3, courseClass: "INS303"), Tasks(courseName: "計算機結構", courseDay: 2, courseInstructor: "馬永昌", courseCredit: 3, courseClass: "INS105"), Tasks(courseName: "iOS應用程式開發入門", courseDay: 3, courseInstructor: "潘世穎", courseCredit: 3, courseClass: "INS205"), Tasks(courseName: "圖論演算法", courseDay: 4, courseInstructor: "林清池", courseCredit: 3, courseClass: "INS101"), Tasks(courseName: "作業系統", courseDay: 5, courseInstructor: "林致宇", courseCredit: 3, courseClass: "INS105")]
    
    var body: some View {
        NavigationStack{ //creates stack for navigation
            List{ //creates a list for objects
                ForEach(courseTaken) {courses in //loops array content
                    NavigationLink( //creates link between pages
                        destination:ToDoDetailView(courseInfo:courses) //destination page
                        ,label:{ //clickable object for redirection
                            ToDoRow(courseInfo:courses) //another view
                        })
                }
            }
        }
        .padding(.horizontal, -10.0)
    }
}

#Preview {
    ToDoList()
}

//
//  ToDoDetailView.swift
//  MyDay
//
//  Created by Bryan Andersen on 2023/10/14.
//

import SwiftUI

struct ToDoDetailView: View {
    let courseInfo : Tasks
    let courseDetail = [CourseDetail.defaultCourseDetail, CourseDetail(courseName: "羽球(初)", courseInstructor: "許振明", instructorContactInfo: ["LINE群組"], teachingAssistant: [["無"]], courseDepartment: "體育室", courseID: "B92B8G04", courseGrade: "1B", enrolledStudent: 36, courseType: "必修", courseTime: [103,104], courseCredits: 0, courseClass: ["GYM 201","GYM201"], courseObjective: ["I.\t認知\n\t1. 瞭解羽毛運動與生活體適能有關之基礎\n\t\t觀念與意義。\n\t2. 瞭解運動與健康人生的關係，並能培養\n\t\t自我運動興趣，進而養成規律運動習慣。\n\t3. 瞭解各項運動規則與常識。", "II.\t技能\n\t1. 建立羽球基本常識\n\t2. 培養羽球基本運動技能", "III.\t情意\n\t1. 能遵守規則、團隊合作、公平競爭。\n\t2. 陶冶性情能欣賞運動之美。"], preCourse: ["無"], courseSyllabus: ["Week 1\t\t- 課程教介紹羽球常識", "Week 2\t- 握拍法、徒手基本步法、控球練習", "Week 3\t- 揮拍、長球、基本步法", "Week 4\t- 揮拍、長球、基本步法", "Week 5\t- 規則、左右側移步法", "Week 6\t- 擊高遠球、左右側移步法", "Week 7\t- 擊高遠球、左右前斜側移步法", "Week 8\t- 發球、網前撲球步法","Week 9\t- 切球和挑球組合練習、斜後右側移步法", "Week 10\t- 切球和挑球組合練習、斜後右側移步法", "Week 11\t- 遶頭後擊高遠球、斜後左側移步法", "Week 12\t- 遶頭後擊高遠球殺球、斜後左右側移步法", "Week 13\t- 殺球、米字步法", "Week 14\t- 規則講解、裁判實習、米字步法", "Week 15\t- 單打比賽", "Week 16\t- 單打比賽", "Week 17\t- 單打比賽"], courseGradingSystem: ["擊高遠球30﹪", "擊短球15%", "發球15%", "學習態度與專業認知40%"]),
                        CourseDetail(courseName: "資料庫系統", courseInstructor: "張雅惠", instructorContactInfo: ["1. e-Mail\t\t\t: yahui@mail.ntou.edu.tw", "2. Office\t\t\t: INS616", "3. Office Hours\t: 星期一上午11:00am-12:00pm"], teachingAssistant: [["1. 姓名\t：黃柏淳（INS605）", "e-Mail\t：11257063@mail.ntou.edu.tw"],["2. 姓名\t：吳宇哲（INS605）", "e-Mail\t：11257065@mail.ntou.edu.tw"]], courseDepartment: "資訊工程學系", courseID: "B5703N54", courseGrade: "3B", enrolledStudent: 79, courseType: "選修", courseTime: [106,107,108], courseCredits: 3, courseClass: ["INS 101","INS101","INS101"], courseObjective: ["1. 了解資料庫系統的整體運作方式", "2. 學習關聯式資料模式的理論", "3. 熟練SQL語法與關聯式資料庫軟體", "4. 實做一個Web-based的資料庫應用系統。"], preCourse: ["離散數學" ,"資料結構", "程式設計"], courseSyllabus: ["Week 1\t\t\t- 簡介、分組、Ch 1", "Week 2\t\t- Ch1：Introduction", "Week 3\t\t- Ch 2：Introduction to the Relational Model", "Week 4\t\t- Ch 3：Introduction to SQL", "Week 5\t\t- 國慶日彈性放假", "Week 6~7\t\t- Ch 3：Introduction to SQL", "Week 8\t\t- 期中考","Week 9~10\t- Ch 4：Intermediate SQL", "Week 11~12\t- Ch 5：Advanced SQL \n\t\t\t\t\t(說明MariaDB和PHP的用法)", "Week 13~14\t- Ch 6：Database Design Using the E-R Model", "Week 15\t\t- Ch 7：Relational Database Design", "Week 16\t\t- 期末考", "Week 17\t\t- 開國紀念日", "Week 18\t\t- Demo或補充教學"], courseGradingSystem: ["期中考","期末考","作業","期末專題","出席"]),
                        CourseDetail(courseName: "大學歷史(一)(歷史)", courseInstructor: "王俊昌", instructorContactInfo: ["LINE群組"], teachingAssistant: [["無"]], courseDepartment: "共同教育中心博雅教育組", courseID: "B9M01ZHL", courseGrade: "1A", enrolledStudent: 45, courseType: "通識", courseTime: [111,112], courseCredits: 2, courseClass: ["BOH 402","BOH402"], courseObjective: ["1. 藉由對中國/臺灣歷史趨勢的分析與評論，\n\t涵養史識，俾瞭解中國/臺灣文化內涵。", "2. 建立宏觀歷史視野，培養海納百川‧有容乃大\n\t的人格特質。"], preCourse: ["無"], courseSyllabus: ["第一篇：中國篇", "\t第一講：中國文明起源", "\t第二講：陸權帝國？海權帝國？", "\t第三講：帝國的衰敗：鴉片戰爭", "第二篇：臺灣篇", "\t第一講：大航海時代下的臺灣", "\t第二講：唐山過臺灣：海洋移民", "\t第三講：恭陳臺灣棄留疏VS帝國的邊陲？", "\t第四講：外國人眼中的臺灣", "\t第五講：對外關係：以教案為例", "\t第六講：太陽旗下的臺灣", "\t第七講：二二八事件VS族群衝突的後遺症", "\t第八講：海神信仰"], courseGradingSystem: ["一、出席與上課參與。（30%）","二、電影/紀錄片賞析。（30%）","三、期末考試。（40%，選擇題25題）"]),
                        CourseDetail(courseName: "資訊安全實務與管理", courseInstructor: "林韓禹", instructorContactInfo: ["e-Mail: hanyu@mail.ntou.edu.tw"], teachingAssistant: [["姓名\t：王奕權（EEC701）", "e-Mail\t：11157063@mail.ntou.edu.tw"]], courseDepartment: "資訊工程學系", courseID: "B57031EC", courseGrade: "3A", enrolledStudent: 62, courseType: "選修", courseTime: [202, 203,204], courseCredits: 3, courseClass: ["INS 303","INS303", "INS303"], courseObjective: ["本課程介紹資訊安全實務與管理基礎，並教導學生識別、評估、管理安全風險，進而建立資訊安全策略。藉由課本上的各種基礎介紹，學生可以獲得更多的資訊安全管理知識，同時將所學知識應用於實務之中。"], preCourse: ["無"], courseSyllabus: ["Week 1\t\t- 課程大綱及概論", "Week 2\t- 資訊安全管理簡介", "Week 3\t- 安全規劃", "Week 4\t- 意外事故規劃", "Week 5\t- 資訊安全策略", "Week 6\t- 發展安全程序", "Week 7\t- 安全管理模型", "Week 8\t- 安全架構模型", "Week 9\t- 期中考", "Week 10\t- 存取控制模型", "Week 11\t- 安全管理實務", "Week 12\t- 風險管理：識別及評估風險", "Week 13\t- 風險管理：控制風險", "Week 14\t- 保護機制", "Week 15\t- 密碼學", "Week 16\t- 人員及安全", "Week 17\t- 法律及道德", "Week 18\t- 期末考"], courseGradingSystem: ["小考：30%", "期中考：35%", "期末考：35%"]),
                        CourseDetail(courseName: "計算機結構", courseInstructor: "馬永昌", instructorContactInfo: ["1. e-Mail\t: ycmaa@mail.ntou.edu.tw", "2. Office\t: INS607", "3. Office Hours\t: 星期一 14:10pm-15:00pm", "4. 分機\t: ext. 6620"], teachingAssistant:[["姓名\t：王冬妮（INS601）", "e-Mail\t：11257047@mail.ntou.edu.tw"]], courseDepartment: "資訊工程學系", courseID: "B5703991", courseGrade: "3A", enrolledStudent: 61, courseType: "選修", courseTime: [206, 207,208], courseCredits: 3, courseClass: ["INS 105","INS105", "INS105"], courseObjective: ["1. 使同學熟悉計算機結構的觀念.", "2. 預備同學進一步從事數位/處理器系統,\n\t計算機系統, 系統晶片等領域的工作或研究."], preCourse: ["數位邏輯", "計算機組織", "作業系統"], courseSyllabus: ["1. 緒論", "2. 記憶體階層結構", "3. 指令層平行化", "4. 資料層平行化", "5. 線型層平行化", "6. 大資料電腦結構", "7. 期末報告"], courseGradingSystem: ["上課參與和出席 20%", "課前預習作業或報告 40%", "期末報告 40%"]),
                        CourseDetail(courseName: "iOS應用程式開發入門", courseInstructor: "潘世穎", instructorContactInfo: ["LINE群組"], teachingAssistant: [["無"]], courseDepartment: "資訊工程學系", courseID: "B57033MD", courseGrade: "3A", enrolledStudent: 16, courseType: "選修", courseTime: [303, 304,305], courseCredits: 3, courseClass: ["INS 205","INS205", "INS205"], courseObjective: ["學習入門的 iOS App 開發技術。"], preCourse: ["無"], courseSyllabus: ["1. Swift 程式語法", "2. 從 SwiftUI 製作 App 畫面", "3. 常用 iOS SDK 介紹", "4. 製作 CRUD App", "5. 網路資料的串接"], courseGradingSystem: ["期末 App 專題 30%", "期中考 20%", "作業 50%"]),
                        CourseDetail(courseName: "圖論演算法", courseInstructor: "林清池", instructorContactInfo: ["Facebook群組"], teachingAssistant: [["1. 姓名\t：黎芷柔"], ["2. 姓名\t：盧品樺"]], courseDepartment: "資訊工程學系", courseID: "B57033MD", courseGrade: "3A", enrolledStudent: 16, courseType: "選修", courseTime: [402, 403, 404], courseCredits: 3, courseClass: ["INS 101","INS101", "INS101"], courseObjective: ["教導學生圖論演算法的設計與分析方法"], preCourse: ["資料結構", "演算法"], courseSyllabus: ["1.Advanced Data Structures (4 weeks)\n\ta.B-Tree\n\tb.Binomial Heaps\n\tc.Fibonacci Heaps", "2.Graph Algorithms (6 weeks)\n\ta.Elementary Graph Algorithms\n\tb.Minimum Spanning Trees\n\tc.Single-Source Shortest Paths\n\td.All-Pairs shortest Paths", "3.Selected Topics (6 weeks)\n\ta.Polynomials and the FFT\n\tb.String Matching\n\tc. Computational Geometry\n\td. NP-completeness"], courseGradingSystem: ["期中考: 25%", "期末考試: 25%", "小考 9～11: 30%", "程式作業10題: 20%","發問，補強，加分題：10%"]),
                        CourseDetail(courseName: "作業系統", courseInstructor: "蔡國煇,林致宇", instructorContactInfo: ["1. e-Mail\t\t\t: tsaikh@email.ntou.edu.tw", "2. 電話號碼\t\t: 0933771545", "3. Office\t\t\t: INS518", "4. Office Hours\t: 星期三11:00am-13:00pm"], teachingAssistant:[["姓名\t：周湘懷（INS505）", "e-Mail\t：11157071@email.ntou.edu.tw"]], courseDepartment: "資訊工程學系", courseID: "B5703660", courseGrade: "3B", enrolledStudent: 76, courseType: "必修", courseTime: [506, 507, 508], courseCredits: 3, courseClass: ["INS105","INS105", "INS105"], courseObjective: ["This is a basic course in operating systems. Fundamental concepts and algorithms in a general setting is presented."], preCourse: ["資料結構", "演算法"], courseSyllabus: ["Week 1~4\t\t- Part 1: Overview", "Week 5~6\t\t- Part 2: Process Management Processes", "Week 7\t\t- Threads (+)", "Week 8\t\t- CPU Scheduling", "Week 9\t\t- Midterm Exam", "Week 10~11\t- Process Synchronization", "Week 12\t\t- Deadlocks", "Week 13\t\t- Part 3: Storage Management,\n\t\t\t\t\tMemory Management", "Week 14~15\t- Virtual Memory", "Week 16\t\t- File-System Interface", "Week 17\t\t- File-System Implementation", "Week 17\t\t- Part 4: I/O Systems", "Week 18\t\t- Final Exam"], courseGradingSystem: ["HWs/Quiz/Others 20%", "Midterm Exam 40%", "Final Exam 40%"])
    ]
    @State private var currentCourse : CourseDetail = CourseDetail.defaultCourseDetail //creates variable to store selected course
    
    func dateToString(date : Date) -> String{ //converts Date object into String with formatted format
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MMMM YYYY HH:mm"
        return dateFormatter.string(from: date)
    }
    
    func searchData(){ //search suitable data from array
        currentCourse = courseDetail[courseDetail.firstIndex(where: {$0.courseName == courseInfo.courseName})!];
    }
    
    var body: some View {
        VStack{ //creates vertical stack
            ScrollView(.vertical){ //creates vertical scroll
                VStack(alignment: .center, spacing: 10.0){ //creates vertical stack
                    Text(dateToString(date: Date.now)) //shows current date and time
                        .padding()
                        .background(.fill)
                        .frame(height: 30)
                        .clipShape(RoundedRectangle(cornerRadius: 50)) //clip shape into wanted shape
                    Spacer(minLength: 1) //put extra space
                    
                    HStack(alignment: .center){ //creates horizontal stack
                        Text(courseInfo.courseName) //shows course name with custom font
                            .font(.custom("SourceHanSerifTC-Bold", fixedSize: 30))
                            .foregroundStyle(.primary)
                    }
                    
                    VStack(alignment: .leading, spacing: 0.0){ //creates vertical stack where each of the following subview shows a title and its content
                        courseDetailView(leftCaption: "課程代碼：", leftContent: currentCourse.courseID, rightCaption: "開課年班：", rightContent: currentCourse.courseGrade)
                        courseDetailView(leftCaption: "授課老師：", leftContent: currentCourse.courseInstructor, rightCaption: "學分：", rightContent: String(currentCourse.courseCredits))
                        courseDetailView(leftCaption: "開課系所：", leftContent: currentCourse.courseDepartment, rightCaption: "選課人數：", rightContent: String(currentCourse.enrolledStudent))
                        courseDetailView(leftCaption: "上課時間：", leftContent: currentCourse.courseTime.map(String.init).joined(separator: ", "), rightCaption: "上課地點：", rightContent: String(currentCourse.courseClass[0]))
                    }
                    .padding(.trailing)
                    
                    //the following subviews show details of the courses with the suited format, which could be vertical or horizontal, or even data stored within an array
                    VerticalSubHeaderView(headerIcon: "book.fill", iconColor: .cyan, headerText: "教學目標", contentArray: currentCourse.courseObjective, contentWidth: 370)
                    
                    HorizontalSubHeaderView(headerIcon: "graduationcap.fill", iconColor: .teal, headerText: "先修科目", contentArray: currentCourse.preCourse)
                    
                    VerticalSubHeaderView(headerIcon: "pencil", iconColor: .mint, headerText: "教學進度", contentArray: currentCourse.courseSyllabus, contentWidth: 500)
                    
                    HorizontalSubHeaderView(headerIcon: "list.clipboard.fill", iconColor: .green, headerText: "評量方式", contentArray: currentCourse.courseGradingSystem)
                    
                    ArraySubHeaderView(headerIcon: "person.text.rectangle.fill", iconColor: .yellow, headerText: "助教", contentArray: currentCourse.teachingAssistant)
                    
                    VerticalSubHeaderView(headerIcon: "phone.fill", iconColor: .orange, headerText: "老師聯絡方式", contentArray: currentCourse.instructorContactInfo, contentWidth: 500)
                }
            }
            .onAppear{ //during entering page
                self.searchData() //query for suitable data
            }
        }
    }
}

#Preview {
    ToDoDetailView(courseInfo: Tasks.defaultTask)
}

struct courseDetailView: View {
    let leftCaption: String
    let leftContent: String
    let rightCaption: String
    let rightContent: String
    var body: some View {
        HStack(alignment: .center, spacing: 1.0){ //creates horizontal stack
            Text(leftCaption)
                .bold()
                .frame(width:87,alignment: .trailing)
            Text(leftContent)
                .frame(width:120,alignment: .leading)
            Spacer()
            
            Text(rightCaption)
                .bold()
                .frame(width:87,alignment: .trailing)
            Text(rightContent)
                .frame(width:75,alignment: .leading)
        }
        .offset(x: 10) //offsets stack location
        .frame(height: 45.0)
    }
    
}

struct VerticalSubHeaderView: View {
    let headerIcon : String
    let iconColor : Color
    let headerText : String
    let contentArray : [String]
    let contentWidth: CGFloat
    @State var boolean: Bool = false
    var body: some View {
        VStack{ //creates vertical stack
            HStack{ //creates horizontal stack
                Image(systemName: headerIcon)
                    .resizable()
                    .scaledToFit()
                    .frame(width:25, height:25)
                    .frame(width:40, height:40)
                    .background(iconColor)
                    .clipShape(Circle())
                Button {
                    boolean.toggle() //changes boolean value
                } label: { //creates clickable object
                    Text(headerText)
                        .font(.title3)
                        .bold()
                        .foregroundStyle(.primary)
                }
                Spacer()
            }
            ScrollView(.horizontal){ //creates horizontal scroll view
                if boolean{
                    LazyVStack(alignment:.leading){ //creates vertical stack
                        ForEach(contentArray, id:\.self){(content) in //loops around an array
                            Text(content)
                        }
                    }
                    .frame(width:contentWidth)
                }
            }
        }
        .padding(.horizontal)
    }
}

struct HorizontalSubHeaderView: View {
    let headerIcon : String
    let iconColor : Color
    let headerText : String
    let contentArray : [String]
    @State var boolean: Bool = false
    
    var body: some View {
        VStack(alignment: .leading){//creates vertical stack
            HStack{ //creates horizontal stack
                Image(systemName: headerIcon)
                    .resizable()
                    .scaledToFit()
                    .frame(width:25, height:25)
                    .frame(width:40, height:40)
                    .background(iconColor)
                    .clipShape(Circle())
                Button {
                    boolean.toggle() //changes boolean value
                } label: { //creates clickable object
                    Text(headerText)
                        .font(.title3)
                        .bold()
                        .foregroundStyle(.primary)
                }
                Spacer()
            }
            ScrollView(.horizontal){  //creates horizontal scroll view
                if boolean{
                    LazyHStack(){ //creates horizontal stack
                        ForEach(contentArray, id:\.self){(content) in //loops around an array
                            Text(content)
                                .fixedSize(horizontal: true, vertical: false)
                                .frame(minHeight:40)
                                .padding(.horizontal)
                                .background(.quaternary)
                                .clipShape((RoundedRectangle(cornerRadius: 30)))
                        }
                    }
                    .padding(.horizontal)
                }
            }
        }
        .padding(.horizontal)
    }
}

struct ArraySubHeaderView: View {
    let headerIcon : String
    let iconColor : Color
    let headerText : String
    let contentArray : [[String]]
    @State var boolean: Bool = false
    
    var body: some View {
        VStack{//creates vertical stack
            HStack{ //creates horizontal stack
                Image(systemName: headerIcon)
                    .resizable()
                    .scaledToFit()
                    .frame(width:25, height:25)
                    .frame(width:40, height:40)
                    .background(iconColor)
                    .clipShape(Circle())
                Button {
                    boolean.toggle() //changes boolean value
                } label: { //creates clickable object
                    Text(headerText)
                        .font(.title3)
                        .bold()
                        .foregroundStyle(.primary)
                }
                Spacer()
            }
            ScrollView(.horizontal){
                if boolean{
                    LazyVStack(alignment:.leading){ //creates vertical stack
                        //an array of arrays
                        ForEach(contentArray, id:\.self){(teachingAssistant) in //loops around an array
                            ForEach(teachingAssistant, id:\.self){ (information) in //loops around an array
                                Text(information)
                            }
                        }
                        
                    }
                    .frame(width:350)
                }
            }
        }
        .padding(.horizontal)
    }
}

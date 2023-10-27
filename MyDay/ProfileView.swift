//
//  ProfileView.swift
//  MyDay
//
//  Created by Bryan Andersen on 2023/10/22.
//

import SwiftUI


struct ProfileView: View {
    
    let dateFormatter = DateFormatter()
    let user: ProfileData = ProfileData(studentName: "洪旻昌", studentBirthday: Date(timeIntervalSinceReferenceDate: 63734400.0), studentGender: "男", studentID: "01057158", studentEmail: "01057158@email.ntou.edu.tw",studentDepartment: "電機資訊學院", studentMajor: "資訊工程學系",  studentGrade: "3B",semesterCredits: 20, currentCredits: 80, majorCredits: 135)
    @State var displayImage = "profileImage" //sets default image
    @State var clickImage: Bool = false //sets default boolean whether to show image or avatar
    
    var body: some View {
        LazyVStack(spacing: 10.0){ //creates vertical stack
            Image(displayImage) //sets image
                .resizable()
                .scaledToFill()
                .transition(.opacity.animation(.bouncy)) //sets transition of entrance
                .frame(width:200, height:200)
                .frame(width:350)
                .clipShape(Circle()) //clips image into wanted shape
                .background(LinearGradient(gradient: Gradient(colors: [.green, .blue]), startPoint: .leading, endPoint: .trailing) //sets gradient background
                    .clipShape(Circle()) //clips shape into wanted shape
                    .frame(width: 215,height:215))
                .onTapGesture { //action on click
                    withAnimation{ //action uses animation
                        clickImage.toggle() //switches value of boolean
                        displayImage = (clickImage ? "profileImage" : "profileAvatar") //update whether to display image or avatar
                    }
                }
            VStack(alignment: .center, spacing: 5.0){ //creates vertical stack
                Text(user.studentName)
                    .font(.custom("SourceHanSerifTC-Bold", fixedSize: 35)) //sets custom font
                Text(user.studentEmail)
                HStack(spacing: 20.0){ //creates horizontal stack
                    let age = Calendar.current.dateComponents([.year], from: user.studentBirthday, to: Date.now).year! //calculate age
                    Text("年齡：")
                        .bold() + Text("\(age)") //multiple style text
                    Divider() //creates line separator
                        .frame(width:2,height:25)
                        .background(.primary)
                    Text("性別：")
                        .bold() + Text("\(user.studentGender)") //multiple style text
                }
                
                Text("學號：\(user.studentID)")
                    .frame(width:200, height:30)
                    .border(.primary)
                
                HStack(spacing: 20.0){ //creates horizontal stack
                    VStack{ //creates vertical stack
                        Text("畢業學分")
                            .bold()
                        Text(String(user.majorCredits))
                    }
                    Divider() //creates line separator
                        .frame(width:2,height:45)
                        .background(.primary)
                    VStack{ //creates vertical stack
                        Text("目前學分")
                            .bold()
                        Text(String(user.currentCredits))
                    }
                    Divider() //creates line separator
                        .frame(width:2,height:45)
                        .background(.primary)
                    VStack{ //creates vertical stack
                        Text("本學期學分")
                            .bold()
                        Text(String(user.semesterCredits))
                    }
                }
                
                VStack(spacing: 5.0){ //creates vertical stack of informations
                    //each subviews design and shows a title and a content with the correlated link
                    ProfileInfo(infoColor: .brown, infoText: "學院", infoDetail: user.studentDepartment, link: "https://eecs.ntou.edu.tw")
                    
                    ProfileInfo(infoColor: Color(.cyan), infoText: "學系", infoDetail: user.studentMajor, link: "https://cse.ntou.edu.tw")
                }
            }
            Spacer()
        }
        .padding(.top, 20.0)
    }
}

#Preview {
    ProfileView()
}

struct ProfileInfo: View {
    let infoColor: Color
    let infoText: String
    let infoDetail: String
    let link: String
    
    var body: some View {
        VStack(alignment: .center){ //creates vertical stack
            Text(infoText)
                .frame(width: 250,height:70, alignment:.center)
                .padding(.bottom, -5.0)
                .font(.custom("HanyiSentyTang", fixedSize: 45)) //custom font
                .foregroundStyle(.primary)
                .background(infoColor)
                .border(.primary, width:3)
            Link(destination:URL(string:link)!, //sets destination URL
                 label:{ //creates clickable object
                HStack(alignment: .center){ //creates horizontal stack
                    Image(systemName: "link") //shows symbol
                        .foregroundStyle(.blue)
                    Text(infoDetail)
                        .bold()
                        .font(.system(size: 20))
                        .frame(height: 40)
                }
                .padding(.bottom, 8.0)
            })
        }
        .border(.primary, width: 4)
    }
}

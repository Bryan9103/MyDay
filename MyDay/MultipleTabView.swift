//
//  MultipleTabView.swift
//  MyDay
//
//  Created by Bryan Andersen on 2023/10/20.
//

import SwiftUI

enum Tabs: String{ //enum for page title
    case Home
    case Courses
    case Profile
}
struct MultipleTabView: View {
    @State var selectionTab: Tabs = .Home
    
    var body: some View {
        NavigationStack{ //creates stack for navigation
            TabView(selection: $selectionTab) { //creates tab to differentiate pages
                HomePageView() //destination page
                    .tabItem{ //clickable page icon
                        Label("Home", systemImage: "house")
                    }
                    .tag(Tabs.Home) //page identifier
                ToDoList() //destination page
                    .tabItem{ //clickable page icon
                        Label("Courses", systemImage: "text.book.closed.fill")
                    }
                    .tag(Tabs.Courses) //page identifier
                ProfileView() //destination page
                    .tabItem{ //clickable page icon
                        Label("Profile", systemImage: "person.crop.circle.fill")
                    }
                    .tag(Tabs.Profile) //page identifier
            }
            .navigationTitle(selectionTab.rawValue.capitalized) //page title
        }
        
    }
}

#Preview {
    MultipleTabView()
}

//
//  CoverPage.swift
//  MyDay
//
//  Created by Bryan Andersen on 2023/10/14.
//

import SwiftUI

struct CoverPage: View {
    @State private var show = false
    var body: some View {
        NavigationStack{ //creates stack for navigation
            VStack(spacing: 30.0){
                if show{
                    Image(.displayLogo)
                        .resizable()
                        .scaledToFit()
                        .transition(.scale) //image transition
                }
            }
            .animation(.easeInOut(duration: 3), value: show) //image's animation speed
            .onAppear { //when entering page
                show = true
            }
            
            NavigationLink{ //creates link between pages
                MultipleTabView() //destination page/view
            }label:{ //clickable object to switch page
                Text("welcome")
                    .foregroundStyle(.blue)
                    .font(.custom(
                        "Bip Hope", fixedSize: 30
                    ))
                    .animation(.bouncy(duration: 0.5).repeatForever(autoreverses:true).delay(3), value: show)
            }
            .navigationTitle("Home Page") //page title
            .navigationBarTitleDisplayMode(.inline) //page title location
        }
    }
}


#Preview {
    CoverPage()
}

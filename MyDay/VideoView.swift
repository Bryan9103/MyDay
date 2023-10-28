//
//  VideoView.swift
//  MyDay
//
//  Created by Bryan Andersen on 2023/10/23.
//

import SwiftUI
import AVKit

struct VideoView: View {
    @State var videoPlayer = AVPlayer() //media player
    var body: some View {
        VStack{
            VideoPlayer(player: videoPlayer) //sets media player
                .onAppear() { //action on entering page
                    videoPlayer = AVPlayer(url:  Bundle.main.url(forResource: "video70YearsNTOU", withExtension: "mp4")!) //sets media through URL
                }
                .frame(height:300)
            Text("國立臺灣海洋大學70週年校慶")
        }
    }
}

#Preview {
    VideoView()
}

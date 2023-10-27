//
//  VideoView.swift
//  MyDay
//
//  Created by Bryan Andersen on 2023/10/23.
//

import SwiftUI
import WebKit

struct YouTubeView: UIViewRepresentable {
    let videoId: String
    func makeUIView(context: Context) ->  WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let demoURL = URL(string: "https://www.youtube.com/embed/\(videoId)") else { return }
        uiView.scrollView.isScrollEnabled = false
        uiView.load(URLRequest(url: demoURL))
    }
}

struct VideoView: View {
    var body: some View {
        VStack{
            Text("國立臺灣海洋大學\n70週年校慶")
                .multilineTextAlignment(.center)
                .font(.custom("SourceHanSerifTC-Bold", fixedSize: 35))
            YouTubeView(videoId: "20EJUCYmdyQ")
                .scaledToFit()
                .padding()
            Spacer()
        }
    }
}

#Preview {
    VideoView()
}





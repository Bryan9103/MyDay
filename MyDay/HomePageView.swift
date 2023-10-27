//
//  HomePageView.swift
//  MyDay
//
//  Created by Bryan Andersen on 2023/10/22.
//

import SwiftUI
import AVKit


struct HomePageView: View {
    @State var musicPlayer = AVPlayer() //media player
    @State var isPlaying: Bool = false //music play/pause condition
    let pageContent = ["本校自1953年創校以來，在歷任校長的卓越領導與全體師生的積極努力下，從校地面積僅300坪的臺灣省立海事專科學校、臺灣省立海洋學院、國立臺灣海洋學院，逐步發展為現今校園面積達60公頃的國立臺灣海洋大學，成為一所以「海洋為主體，但不以海洋為限」、「卓越教學」與「特色研究」兼具的國際頂尖一流大學。",
                       "本校目前設有「海大校區」、「馬祖校區」及「桃園觀音校區」三個校區。全校計有七個學院，包括22個學系、12個獨立研究所、28個碩士班、20個博士班、13個碩士在職專班，4個進修學士班。本校學生人數將近9,000人，另有來自其他各個國家的境外生與國際生約500人，已成為全球最具完整特色之國際化的頂尖海洋高等學府。",
                       "海大主校區濱臨基隆港，校園倚山傍海，與和平島、正濱漁港、碧砂漁港及海洋科技博物館等相毗鄰，並有獨特的龍崗生態園區，可遠眺一望無際的太平洋美麗海景，是一所景色秀麗的港都城市大學。馬祖校區成立於2017年9月，共有3個學系，除教學與實驗研究外，校區特色重點課程與馬祖產業發展方向緊密結合，同時成立「馬祖海洋研究中心」，規劃有關產學合作、生技加值、交通建設、航運、水域活動及觀光休閒等多面向發展，希望培養海洋產業跨領域高階人才。2018年11月，桃園觀音校區設立「海洋創新育成基地」，建置海域環境觀測平台與海洋科學園區，協助桃園市政府建設桃園為兼具陸海空大型國際都會城市。",
                       "歷年來，本校在教學、研究與服務等各方面的表現屢屢獲得肯定，自2005年起海大連續獲選為教育部「獎勵大學教學卓越計畫」重點大學；2006年起，連續獲得教育部「五年五百億發展國際一流大學及頂尖研究中心計畫」、「邁向頂尖大學計畫」、「高教深耕計畫」第一部分及第二部分兩個特色一流研究中心「海洋中心」及「海洋工程科技中心」，以及「大學社會責任實踐（USR）計畫」之特別補助，並於2021年獲遠見USR楷模獎；本校出版的「海洋學刊 JMST」成為國內大學出版的期刊中，第一個委任ELSEVIER公司出版並收錄至雙I ( SCI與EI ) 資料庫之期刊，堪稱外界對海洋大學在教學、研究與服務等各個面向的肯定。",
                       "本校積極整合學術資源，擴大學術能量，積極爭取研究與產學合作計畫、延攬國際海洋專業人才，並結合海洋特色與優勢，積極改善教學、實驗、實習與現場調查設備。推動學校及產業界合作，強化產學研發能量，並獲重要成果。產學研究與技轉經費自2011年至今，均已大幅躍升，產學金額由5.8億成長為12.5億以上，技轉金額則由400萬元成長為5,000萬元以上，表現亮眼！促進學生學習專業與實務經驗相互結合，擴展學生國際觀，大力推動校外實習，學生長短期出國見習，促進校園國際化，並創立2,000萬元「海洋珍珠基金」，用以聘請國際級大師，提高教學研究水準。積極推動「2+1」雙聯學位，加速推動本校國際化。配合國家「海洋白皮書」與「綠能」政策，培育國家重要海洋專業人才，包含離岸風電之海事工程、智慧航輪、船長等高薪人才。AI應用、食科與食安、生技醫療、海洋環境保育、高科技生科與養殖等特殊專業人才。校內提供學生社團發展及體育設施環境，落實全人教育目標，培育具海洋人文素養與社會競爭力的人才。此外，亦積極與國內外各高中職及大學與研究所攜手合作，執行「教育部大學社會責任實踐(USR)計畫」，擴大在社會的影響力與貢獻，擦亮我們海洋的招牌！",
                       "基於學校過去既有的教學與研究成果，未來將秉持「頂尖海大建造工程」的十大願景與理念，帶領著全校師生跟行政團隊，對內—持續精進教學方法與創新、促進校園和諧並落實大學社會責任；對外—擴大爭取外部的資源，提升關鍵技術研發並展現本校特色研究成果、強化產學合作的質與量、提升學校的國際競爭力及全球排名，為臺灣培育更多兼具國際視野及在地關懷的跨領域海洋專業人才！辦一所「令人感動的大學」以及「社會不可或缺的大學」！讓海大成為一所具有活力與高度榮譽感之「卓越教學與特色研究兼具的海洋國際頂尖大學」！"]
    
    var body: some View {
        VStack(spacing: 0.0){ //sets header view
            Image("headerNTOU")
                .resizable()
                .scaledToFit()
                .padding()
                .background(.white)
                .padding(.top)
            
            Divider() //creates separator line
                .frame(height:2)
                .background(.primary)
            
            
            ScrollView(.vertical){ //creates vertical scroll
                ScrollView(.horizontal){ //creates horizontal scroll
                    LazyHStack{ //creates horizontal stack
                        NavigationLink{ //creates link between pages
                            VideoView() //destination page
                        } label:{ //clickable object for redirection
                            IconView(iconLogo: "logo70Years", iconText: "70週年校慶")
                        }.onTapGesture(perform: { //action on click
                            musicPlayer.pause() //pause playing music
                        })
                        
                        Link(destination: URL(string: "https://www.ntou.edu.tw")!, //creates link with URL
                             label: { //sets clickable object
                            IconView(iconLogo: "logoNTOU", iconText: "學校網站")
                        }).onTapGesture(perform: { //action on click
                            musicPlayer.pause()
                        })
                        
                        Link(destination: URL(string: "https://maps.apple.com/?address=No.%202%20Beining%20Rd,%20Zhongzheng%20District,%20Keelung%20City%20202,%20Taiwan&auid=399980664223157102&ll=25.150246,121.775228&lsp=9902&q=National%20Taiwan%20Ocean%20University")!, //creates link with URL
                             label: { //sets clickable object
                            IconView(iconLogo: "locationIcon", iconText: "地點")
                        })
                        
                    }
                }
                .padding(.horizontal)
                .padding(.bottom, -10.0)
                
                Divider() //creates separator line
                    .frame(height:2)
                    .background(.primary)
                
                LazyVStack(alignment:.center){ //creates vertical stack
                    LazyHStack(spacing: 20.0){ //creates horizontal stack
                        PlayerButton(musicPlayer: $musicPlayer, isPlaying: $isPlaying) //creates subview for play/pause music button
                        Text("海大介紹")
                            .font(.custom("HanyiSentyTang", fixedSize: 40))
                    }
                    .padding(.trailing)
                    Spacer()
                    Section(header: Text("卓越教學與特色研究兼具\n的海洋國際頂尖大學") //split into sections and creates header of each section
                        .font(.custom("SourceHanSerifTC-Bold", fixedSize: 25))
                        .padding(.horizontal, 30.0)
                        .multilineTextAlignment(.center) //set text centre alignment
                        .background(.quaternary)
                        .clipShape(RoundedRectangle(cornerRadius: 20)), //clip shape into a specific shape
                            content: { //content of the stack
                        LazyVGrid(columns: [GridItem()], //creates vertical grid with array of GridItem() put into the columns paramenter
                                  content: { //content of each row in the column
                            ForEach(pageContent, id : \.self) { par in
                                Text("\t" + par + "\n")
                                    .font(.system(size: 15))
                            }
                        })
                        .padding(.top, -20.0)
                        .padding()
                    }
                    )
                }
                .frame(width:380, alignment: .center)
                
            }
        }
        .onAppear(){ //action when entering page
            if(!isPlaying){
                let fileURL = Bundle.main.url(forResource:"backgroundMusic", withExtension: "mp3")! //sets URL
                let player = AVPlayerItem(url: fileURL) //access URL
                musicPlayer.replaceCurrentItem(with: player) //replace item with wanted object
            }
        }
    }
}

#Preview {
    HomePageView()
}

struct IconView: View {
    let iconLogo:String
    let iconText:String
    var body: some View {
        VStack(spacing: -10.0){ //creates a vertical stack
            ZStack{ //creates a Z-axis stack
                Circle()
                    .fill(.white)
                    .stroke(.black,lineWidth: 2)
                    .frame(width:150)
                Image(iconLogo)
                    .resizable()
                    .scaledToFit()
                    .frame(height:100)
                    .frame(width:150,height:150)
                    .background(.clear)
                    .clipShape(Circle()) //clip shape into wanted shape
            }
            .padding()
            
            Text(iconText)
                .foregroundStyle(.blue)
                .bold()
        }
        .padding(.bottom)
    }
}

struct PlayerButton: View {
    @Binding var musicPlayer: AVPlayer //bind variable with variable in view
    @Binding var isPlaying: Bool //bind variable with variable in view
    var body: some View {
        Button{
            isPlaying.toggle() //switch variable boolean value
            if(isPlaying){
                musicPlayer.play() //plays music
            }
            else{
                musicPlayer.pause() //pauses music
            }
        } label : {
            Image(systemName: isPlaying ? "pause.circle" : "play.circle") //decide what symbol to show
                .resizable()
                .scaledToFit()
                .frame(height:30)
        }
        .foregroundStyle(.orange)
    }
}

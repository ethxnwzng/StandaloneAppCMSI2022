//
//  AnimeClicked.swift
//  Standalone Mobile App
//
//  Created by Ethan Wong on 1/21/24.
//


import SwiftUI


struct AnimeClicked: View {
    var thisAnime: Anime
    var Animes: [Anime]
    @ObservedObject var animeData: AnimeData
    

    
    
    var body: some View {
        
        //top level
        VStack {
            Spacer()
                .frame(height: 20)
            
            thisAnime.image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 321.5, height: 215, alignment: .topLeading)
                .overlay {
                    Rectangle().stroke(.orange, lineWidth: 8)
                }
            //bottom half under picture
            HStack {
                Spacer()
                    .frame(width:5)
                VStack {
                    if (thisAnime.logoName != "none") {
                        Image(thisAnime.logoName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 140, height: 75, alignment: .topLeading)
                            .padding()
                        
                    }
                    else {
                        Text(thisAnime.name)
                            .fontWeight(.heavy)
                            .foregroundStyle(.orange)
                            .font(.system(size: 16))
                            .padding()
                        Spacer()
                            .frame(height:20)
                    }
                    
                    Text(thisAnime.release)
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)
                    Spacer()
                        .frame(height:40)
                    
                    WatchButton(index: animeData.allAnimes.firstIndex(where: { $0.id == thisAnime.id }) ?? 0, animeData: sharedAnimeData)
    
                    
                    //VStack(alignment: .leading) {
                        //WatchButton(Animes: AllAnimes, Index: index)
                    //}
                    
                }
                
                //description side
                VStack {
                    Text("Description")
                        .font(.system(size: 10))
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                    ScrollView {
                        Text(thisAnime.description)
                            .padding()
                            .font(.system(size: 10))
                            .foregroundStyle(.white)
                            .overlay(
                                RoundedRectangle(cornerRadius: 16)
                                    .stroke(.blue, lineWidth: 3)
                            )
                    }
                    
                }
                Spacer()
                    .frame(width:18)
                
                
            }
            .padding()
            
            
        }
        .background(.black)
    }
}

#Preview {
    AnimeClicked(thisAnime: JujutsuKaisen, Animes: AllAnimes, animeData: sharedAnimeData)
}


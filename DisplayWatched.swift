//
//  DisplayWatched.swift
//  Standalone Mobile App
//
//  Created by Ethan Wong on 1/30/24.
//

import SwiftUI

struct DisplayWatched: View {
    
    var WatchedAnimes: [Anime]
    var isWatch: Bool
    
    var body: some View {
        
        VStack {
            
            Spacer()
                .frame(height:20)
            
            HStack {
                
                Spacer()
                
                if isWatch {
                    Text("Watched Animes")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundStyle(.orange)
                } else {
                    Text("Not Watched Animes")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundStyle(.orange)
                }
                
                Spacer()
            }
            
            Spacer()
                .frame(height:40)
            
            
            ScrollView {
        
                
                VStack {
                    ForEach(WatchedAnimes) { anime in
                        Text(anime.name)
                            .font(.system(size: 10))
                            .fontWeight(.bold)
                            .foregroundStyle(.blue)
                        
                        CoverImages(cover: Image(anime.name))
                        
                        Text(anime.release)
                            .fontWeight(.heavy)
                            .foregroundStyle(.white)
                        
                        Spacer()
                            .frame(height: 20)
                    }
                }
            }
        }
        .background(.black)
       
    }
}

#Preview {
    DisplayWatched(WatchedAnimes: watched, isWatch: false)
}

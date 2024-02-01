//
//  DisplayMain.swift
//  Standalone Mobile App
//
//  Created by Ethan Wong on 1/21/24.
//

import SwiftUI

struct DisplayMain2: View {
    
    @State private var showWatchedOnly = true
   
    //Array of "Anime" structs containing all "Anime" listed on app
    var Animes: [Anime]
    
    //array holding only watched anime
    var watchedAnimes: [Anime] {
        
        AllAnimes.filter { Anime in
            (!showWatchedOnly || Anime.isFavorite)
            
        }
    }
    
    //array holding only unwatched anime
    var unwatchedAnimes: [Anime] {
        AllAnimes.filter { Anime in
            (!Anime.isFavorite)
        }
    }
    
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                
                Spacer()
                    .frame(height:40)
                
                //First row which has Watched, All Animes, and Not Watched
                HStack {
                    
                    //Vstack for Watched and blue eye
                    VStack {
                        
                        NavigationLink(destination: DisplayWatched(WatchedAnimes: watchedAnimes, isWatch: true), label: {Image(systemName: "eye.fill")})
                                .animation(.snappy, value: self.Animes)
                        
                        Text("Watched")
                            .font(.caption)
                            .foregroundStyle(.white)
                    }
                    
                    Spacer()
                        .frame(width:20)
                    
                    //Text displaying All Animes
                    Text("All Animes")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundStyle(.orange)
                    
                    Spacer()
                        .frame(width:20)
                    
                    //Vstack for Not Watched and gray eye
                    VStack {
                        
                        NavigationLink(destination: DisplayWatched(WatchedAnimes: unwatchedAnimes, isWatch: false), label: {Image(systemName: "eye.fill")
                            .foregroundStyle(.gray)})
                        
                        Text("Not Watched")
                            .font(.caption)
                            .foregroundStyle(.white)
                    }
                    
                } //Top level Hstack closer
                
                Spacer()
                    .frame(height:40)
            
                //Vstack with all rows displaying 3 animes each
                VStack {
                    
                    //Each HStack holds three anime
                    HStack {
                        
                        //1st anime
                        VStack {
                            
                            NavigationLink(destination: AnimeClicked(thisAnime: Animes[0], Animes: AllAnimes, animeData: sharedAnimeData), label: {
                                
                                Text(Animes[0].name)
                                    .font(.system(size: 10))
                                    .fontWeight(.bold)
                                    .foregroundStyle(.blue)
                                
                            })
                            
                            CoverImages(cover: Image(Animes[0].name))
                            
                            Text(Animes[0].release)
                                .fontWeight(.heavy)
                                .foregroundStyle(.white)
                        }
                        
                        Spacer()
                            .frame(maxWidth: .infinity)
                        
                        //2nd anime
                        VStack {
                            
                            NavigationLink(destination: AnimeClicked(thisAnime: Animes[1], Animes: AllAnimes, animeData: sharedAnimeData), label: {
                                
                                Text(Animes[1].name)
                                    .font(.system(size: 10))
                                    .fontWeight(.bold)
                                    .foregroundStyle(.blue)
                                
                            })
                            
                            CoverImages(cover: Image(Animes[1].name))
                            
                            Text(Animes[1].release)
                                .fontWeight(.heavy)
                                .foregroundStyle(.white)
                        }
                        
                        Spacer()
                            .frame(maxWidth: .infinity)
                        
                        //3rd anime
                        VStack {
                            
                            NavigationLink(destination: AnimeClicked(thisAnime: Animes[2], Animes: AllAnimes, animeData: sharedAnimeData), label: {
                                
                                Text(Animes[2].name)
                                    .font(.system(size: 10))
                                    .fontWeight(.bold)
                                    .foregroundStyle(.blue)
                                
                            })
                            
                            CoverImages(cover: Image(Animes[2].name))
                            
                            Text(Animes[2].release)
                                .fontWeight(.heavy)
                                .foregroundStyle(.white)
                        }
                        
                    }
                    .padding()
                    
                    //2nd row of animes
                    HStack {
                        
                        //4th anime
                        VStack {
                            
                            NavigationLink(destination: AnimeClicked(thisAnime: Animes[3], Animes: AllAnimes, animeData: sharedAnimeData), label: {
                                
                                Text(Animes[3].name)
                                    .font(.system(size: 10))
                                    .fontWeight(.bold)
                                    .foregroundStyle(.blue)
                                
                            })
                            
                            CoverImages(cover: Image(Animes[3].name))
                            
                            Text(Animes[3].release)
                                .fontWeight(.heavy)
                                .foregroundStyle(.white)
                        }
                        
                        Spacer()
                            .frame(maxWidth: .infinity)
                        
                        //5th anime
                        VStack {
                            
                            NavigationLink(destination: AnimeClicked(thisAnime: Animes[4], Animes: AllAnimes, animeData: sharedAnimeData), label: {
                                
                                Text(Animes[4].name)
                                    .font(.system(size: 10))
                                    .fontWeight(.bold)
                                    .foregroundStyle(.blue)
                                
                            })
                            
                            CoverImages(cover: Image(Animes[4].name))
                            
                            Text(Animes[4].release)
                                .fontWeight(.heavy)
                                .foregroundStyle(.white)
                        }
                        
                        Spacer()
                            .frame(maxWidth: .infinity)
                        
                        //6th anime
                        VStack {
                            
                            NavigationLink(destination: AnimeClicked(thisAnime: Animes[5], Animes: AllAnimes, animeData: sharedAnimeData), label: {
                                
                                Text(Animes[5].name)
                                    .font(.system(size: 10))
                                    .fontWeight(.bold)
                                    .foregroundStyle(.blue)
                                
                            })
                            
                            CoverImages(cover: Image(Animes[5].name))
                            
                            Text(Animes[5].release)
                                .fontWeight(.heavy)
                                .foregroundStyle(.white)
                        }
                        
                    }
                    .padding()
                    
                    //3rd row of animes
                    HStack {
                        
                        //7th anime
                        VStack {
                            
                            NavigationLink(destination: AnimeClicked(thisAnime: Animes[6], Animes: AllAnimes, animeData: sharedAnimeData), label: {
                                
                                Text(Animes[6].name)
                                    .font(.system(size: 10))
                                    .fontWeight(.bold)
                                    .foregroundStyle(.blue)
                                
                            })
                            
                            CoverImages(cover: Image(Animes[6].name))
                            
                            Text(Animes[6].release)
                                .fontWeight(.heavy)
                                .foregroundStyle(.white)
                        }
                        
                        Spacer()
                            .frame(maxWidth: .infinity)
                        
                        //8th anime
                        VStack {
                            
                            NavigationLink(destination: AnimeClicked(thisAnime: Animes[7], Animes: AllAnimes, animeData: sharedAnimeData), label: {
                                
                                Text(Animes[7].name)
                                    .font(.system(size: 10))
                                    .fontWeight(.bold)
                                    .foregroundStyle(.blue)
                                
                            })
                            
                            CoverImages(cover: Image(Animes[7].name))
                            
                            Text(Animes[7].release)
                                .fontWeight(.heavy)
                                .foregroundStyle(.white)
                        }
                        
                        Spacer()
                            .frame(maxWidth: .infinity)
                        
                        //9th anime
                        VStack {
                            
                            NavigationLink(destination: AnimeClicked(thisAnime: Animes[8], Animes: AllAnimes, animeData: sharedAnimeData), label: {
                                
                                Text(Animes[8].name)
                                    .font(.system(size: 10))
                                    .fontWeight(.bold)
                                    .foregroundStyle(.blue)
                                
                            })
                            
                            CoverImages(cover: Image(Animes[8].name))
                            
                            Text(Animes[8].release)
                                .fontWeight(.heavy)
                                .foregroundStyle(.white)
                        }
                        
                    }
                    .padding()
                    
                    //4th row of animes
                    HStack {
                        
                        //10th anime
                        VStack {
                            
                            NavigationLink(destination: AnimeClicked(thisAnime: Animes[9], Animes: AllAnimes, animeData: sharedAnimeData), label: {
                                
                                Text(Animes[9].name)
                                    .font(.system(size: 10))
                                    .fontWeight(.bold)
                                    .foregroundStyle(.blue)
                                
                            })
                            
                            CoverImages(cover: Image(Animes[9].name))
                            
                            Text(Animes[9].release)
                                .fontWeight(.heavy)
                                .foregroundStyle(.white)
                        }
                        
                        Spacer()
                            .frame(maxWidth: .infinity)
                        
                        //11th anime
                        VStack {
                            
                            NavigationLink(destination: AnimeClicked(thisAnime: Animes[10], Animes: AllAnimes, animeData: sharedAnimeData), label: {
                                
                                Text(Animes[10].name)
                                    .font(.system(size: 10))
                                    .fontWeight(.bold)
                                    .foregroundStyle(.blue)
                                
                            })
                            
                            CoverImages(cover: Image(Animes[10].name))
                            
                            Text(Animes[10].release)
                                .fontWeight(.heavy)
                                .foregroundStyle(.white)
                        }
                        
                        Spacer()
                            .frame(maxWidth: .infinity)
                        
                        //12th anime
                        VStack {
                            
                            NavigationLink(destination: AnimeClicked(thisAnime: Animes[11], Animes: AllAnimes, animeData: sharedAnimeData), label: {
                                
                                Text(Animes[11].name)
                                    .font(.system(size: 10))
                                    .fontWeight(.bold)
                                    .foregroundStyle(.blue)
                                
                            })
                            
                            CoverImages(cover: Image(Animes[11].name))
                            
                            Text(Animes[11].release)
                                .fontWeight(.heavy)
                                .foregroundStyle(.white)
                        }
                        
                    }
                    .padding()
                    
                    HStack {
                        
                        //1st anime
                        VStack {
                            
                            NavigationLink(destination: AnimeClicked(thisAnime: Animes[12], Animes: AllAnimes, animeData: sharedAnimeData), label: {
                                
                                Text(Animes[12].name)
                                    .font(.system(size: 10))
                                    .fontWeight(.bold)
                                    .foregroundStyle(.blue)
                                
                            })
                            
                            CoverImages(cover: Image(Animes[12].name))
                            
                            Text(Animes[12].release)
                                .fontWeight(.heavy)
                                .foregroundStyle(.white)
                        }
                        
                        Spacer()
                            .frame(maxWidth: .infinity)
                        
                        //2nd anime
                        VStack {
                            
                            NavigationLink(destination: AnimeClicked(thisAnime: Animes[13], Animes: AllAnimes, animeData: sharedAnimeData), label: {
                                
                                Text(Animes[13].name)
                                    .font(.system(size: 10))
                                    .fontWeight(.bold)
                                    .foregroundStyle(.blue)
                                
                            })
                            
                            CoverImages(cover: Image(Animes[13].name))
                            
                            Text(Animes[13].release)
                                .fontWeight(.heavy)
                                .foregroundStyle(.white)
                        }
                        
                        Spacer()
                            .frame(maxWidth: .infinity)
                        
                        //3rd anime
                        VStack {
                            
                            NavigationLink(destination: AnimeClicked(thisAnime: Animes[14], Animes: AllAnimes, animeData: sharedAnimeData), label: {
                                
                                Text(Animes[14].name)
                                    .font(.system(size: 10))
                                    .fontWeight(.bold)
                                    .foregroundStyle(.blue)
                                
                            })
                            
                            CoverImages(cover: Image(Animes[14].name))
                            
                            Text(Animes[14].release)
                                .fontWeight(.heavy)
                                .foregroundStyle(.white)
                        }
                        
                    }
                    .padding()
                    
                    HStack {
                        
                        //1st anime
                        VStack {
                            
                            NavigationLink(destination: AnimeClicked(thisAnime: Animes[15], Animes: AllAnimes, animeData: sharedAnimeData), label: {
                                
                                Text(Animes[15].name)
                                    .font(.system(size: 10))
                                    .fontWeight(.bold)
                                    .foregroundStyle(.blue)
                                
                            })
                            
                            CoverImages(cover: Image(Animes[15].name))
                            
                            Text(Animes[15].release)
                                .fontWeight(.heavy)
                                .foregroundStyle(.white)
                        }
                        
                        Spacer()
                            .frame(maxWidth: .infinity)
                        
                        //2nd anime
                        VStack {
                            
                            NavigationLink(destination: AnimeClicked(thisAnime: Animes[16], Animes: AllAnimes, animeData: sharedAnimeData), label: {
                                
                                Text(Animes[16].name)
                                    .font(.system(size: 10))
                                    .fontWeight(.bold)
                                    .foregroundStyle(.blue)
                                
                            })
                            
                            CoverImages(cover: Image(Animes[16].name))
                            
                            Text(Animes[16].release)
                                .fontWeight(.heavy)
                                .foregroundStyle(.white)
                        }
                        
                        Spacer()
                            .frame(maxWidth: .infinity)
                        
                        //3rd anime
                        VStack {
                            
                            NavigationLink(destination: AnimeClicked(thisAnime: Animes[17], Animes: AllAnimes, animeData: sharedAnimeData), label: {
                                
                                Text(Animes[17].name)
                                    .font(.system(size: 10))
                                    .fontWeight(.bold)
                                    .foregroundStyle(.blue)
                                
                            })
                            
                            CoverImages(cover: Image(Animes[17].name))
                            
                            Text(Animes[17].release)
                                .fontWeight(.heavy)
                                .foregroundStyle(.white)
                        }
                        
                    }
                    .padding()
                    
                    
                    
                    
                } //Vstack closer
                
            } //ScrollView closer
            
            .background(.black)
            
            
        } //NaviView closer
                
        .padding()
        .background(.black)
    } //var body closer

    
} //struct DisplayMain2 closer



#Preview {
    DisplayMain2(Animes: AllAnimes)
}

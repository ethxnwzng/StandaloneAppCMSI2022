import SwiftUI

class AnimeData: ObservableObject {
    //@Published -> Any time an object is changed, all views using the object will change as well
    @Published var allAnimes: [Anime]

    //make instance of AllAnimes array to edit isFavorite bool
    init(allAnimes: [Anime]) {
        self.allAnimes = AllAnimes
    }
}

//usable across files
let sharedAnimeData = AnimeData(allAnimes: AllAnimes)


struct WatchButton: View {

    var index: Int
    @ObservedObject var animeData: AnimeData
    
    var body: some View {
        Button {
            if animeData.allAnimes[index].isFavorite == false {
                animeData.allAnimes[index].isFavorite = true
            }
            else {
                animeData.allAnimes[index].isFavorite = false
            }
        } label: {
            VStack {
                Label("Toggle Watched", systemImage: animeData.allAnimes[index].isFavorite ? "eye.fill" : "eye")
                    .frame(width: 20, height: 20)
                    .labelStyle(.iconOnly)
                    .foregroundStyle(animeData.allAnimes[index].isFavorite ? .blue : .gray)
                    .animation(.easeInOut, value: animeData.allAnimes[index].isFavorite)

                if animeData.allAnimes[index].isFavorite {
                    Text("Watched")
                        .font(.caption)
                        .foregroundStyle(.orange)
                        
                } else {
                    Text("Not Watched")
                        .font(.caption)
                        .foregroundStyle(.orange)
                }
            }
        }
        .padding()
    }
}


#Preview {
    WatchButton(index: 0, animeData: sharedAnimeData)
}

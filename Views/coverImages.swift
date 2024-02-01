//
//  CircleImage.swift
//  Standalone Mobile App
//
//  Created by Ethan Wong on 1/21/24.
//

import SwiftUI

struct CoverImages: View {
    
    //Image being displayed
    var cover: Image
    
    var body: some View {
        
        VStack {
            
                cover
                    //next 4 lines of code deal with image resizing based on fitting the aspect ratio to the .frame params (to get the numbers inputted within .frame I just scaled the original image's contents div. by 3
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 98.8666666667, height: 136.5333333333, alignment: .topLeading)
                    //overlay giving a black border to image
                    .overlay {
                        Rectangle().stroke(.black, lineWidth: 4)
                    }
                
        }
            
            
    }
        
}


#Preview {
    CoverImages(cover: Image("AttackOnTitan"))
}

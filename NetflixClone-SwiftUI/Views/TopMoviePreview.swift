//
//  TopMoviePreview.swift
//  NetflixClone-SwiftUI
//
//  Created by Saikiran Panuganti on 28/08/20.
//  Copyright © 2020 Saikiran Panuganti. All rights reserved.
//

import SwiftUI
import KingfisherSwiftUI

struct TopMoviePreview: View {
    var movie: Movie
    
    func isLastCategory(category : String) -> Bool {
        let count = movie.categories.count
        
        if let index = movie.categories.firstIndex(of: category) {
            if index + 1 == count {
                return true
            }
        }
        
        return false
    }
    
    var body: some View {
        ZStack {
            KFImage(movie.thumbnailURL).resizable().scaledToFill().clipped()
            VStack {
                Spacer(minLength: 10)
                HStack {
                    ForEach(movie.categories, id: \.self) { category in
                        HStack {
                            Text(category).foregroundColor(.white)
                            
                            if !self.isLastCategory(category: category) {
                                Image(systemName: "circle.fill").foregroundColor(.blue).font(.system(size: 5))
                            }
                        }
                    }
                }
                HStack() {
                    Spacer()
                    SmallVerticalButton(text: "My List", selectedImage: "checkmark", unSelectedImage: "plus", isSelected: true) {
                        print("My List tapped")
                    }
                    Spacer()
                    WhiteButton(text: "Play", imageName: "play.fill") {
                        print("play tapped")
                    }.frame(width: 120)
                    Spacer()
                    SmallVerticalButton(text: "info", selectedImage: "info.circle", unSelectedImage: "info.circle", isSelected: false) {
                        print("info tapped")
                    }
                    Spacer()
                }
                .padding(.bottom, 10)
                .padding(.top, 10)
            }
        }
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: exampleMovie1)
    }
}

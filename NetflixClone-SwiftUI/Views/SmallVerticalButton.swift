//
//  SmallVerticalButton.swift
//  NetflixClone-SwiftUI
//
//  Created by Saikiran Panuganti on 28/08/20.
//  Copyright © 2020 Saikiran Panuganti. All rights reserved.
//

import SwiftUI

struct SmallVerticalButton: View {
    var text : String
    var selectedImage : String
    var unSelectedImage : String
    
    var isSelected : Bool
    
    var imageName : String {
        if isSelected {
            return selectedImage
        }
        return unSelectedImage
    }
    
    
    
    
    var buttonTapped : () -> Void
    
    var body: some View {
        Button(action: {
            self.buttonTapped()
        }, label: {
            VStack {
                Image(systemName: imageName)
                    .foregroundColor(.white)
                Text(text).foregroundColor(.white)
                    .font(.system(size: 14))
                    .bold()
            }
        })
    }
}

struct SmallVerticalButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            SmallVerticalButton(text: "My List", selectedImage: "checkmark", unSelectedImage: "plus", isSelected: false) {
                print("Button Tapped")
            }
        }
    }
}

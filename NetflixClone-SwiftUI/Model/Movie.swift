//
//  Movie.swift
//  NetflixClone-SwiftUI
//
//  Created by Saikiran Panuganti on 28/08/20.
//  Copyright © 2020 Saikiran Panuganti. All rights reserved.
//

import Foundation

struct Movie : Hashable {
    var id : String
    var name : String
    var thumbnailURL : URL
    var categories : [String]
}

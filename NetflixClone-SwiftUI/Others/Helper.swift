//
//  Helper.swift
//  NetflixClone-SwiftUI
//
//  Created by Saikiran Panuganti on 28/08/20.
//  Copyright © 2020 Saikiran Panuganti. All rights reserved.
//

import Foundation

let exampleMovie1 = Movie(id: UUID().uuidString, name: "DARK", thumbnailURL: URL(string: "https://picsum.photos/200/300")!, thumbnailImage: "", categories: ["Dustopian", "Ecxiting", "Suspenseful", "Sci-Fi TV"])
let exampleMovie2 = Movie(id: UUID().uuidString, name: "Travelers", thumbnailURL: URL(string: "https://picsum.photos/200/301")!, thumbnailImage: "", categories: ["Dustopian", "Ecxiting", "Suspenseful", "Sci-Fi TV"])
let exampleMovie3 = Movie(id: UUID().uuidString, name: "Community", thumbnailURL: URL(string: "https://picsum.photos/200/302")!, thumbnailImage: "", categories: ["Dustopian", "Ecxiting", "Suspenseful", "Sci-Fi TV"])
let exampleMovie4 = Movie(id: UUID().uuidString, name: "Alone", thumbnailURL: URL(string: "https://picsum.photos/200/303")!, thumbnailImage: "", categories: ["Dustopian", "Ecxiting", "Suspenseful", "Sci-Fi TV"])
let exampleMovie5 = Movie(id: UUID().uuidString, name: "Hannibal", thumbnailURL: URL(string: "https://picsum.photos/200/304")!, thumbnailImage: "", categories: ["Dustopian", "Ecxiting", "Suspenseful", "Sci-Fi TV"])
let exampleMovie6 = Movie(id: UUID().uuidString, name: "After Life", thumbnailURL: URL(string: "https://picsum.photos/200/305")!, thumbnailImage: "", categories: ["Dustopian", "Ecxiting", "Suspenseful", "Sci-Fi TV"])

let exampleTopPreviewMovie = Movie(id: UUID().uuidString, name: "After Life", thumbnailURL: URL(string: "https://picsum.photos/200/305")!, thumbnailImage: "anotherLife", categories: ["Dustopian", "Ecxiting", "Suspenseful", "Sci-Fi TV"])

let exampleMovies: [Movie] = [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6]

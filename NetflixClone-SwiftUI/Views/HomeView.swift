//
//  HomeView.swift
//  NetflixClone-SwiftUI
//
//  Created by Saikiran Panuganti on 28/08/20.
//  Copyright © 2020 Saikiran Panuganti. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var viewModel : HomeViewModel = HomeViewModel()
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    ForEach(viewModel.allCategories, id: \.self) { (category) in
                        VStack {
                            HStack {
                                Text(category).font(.title).bold()
                                Spacer()
                            }
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack {
                                    ForEach(self.viewModel.getMovies(forCategory: category), id: \.self) { (movie) in
                                        StandardHomeMovie(movie: movie).frame(width: 100, height: 200).padding(.horizontal, 20)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }.foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

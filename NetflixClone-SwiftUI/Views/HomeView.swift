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
        ZStack(alignment: .top) {
            Color.black.edgesIgnoringSafeArea(.all)
            
            TopRowButtons().padding(.top, 10).zIndex(1)
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    TopMoviePreview(movie: exampleTopPreviewMovie)
                        .frame(width: screenWidth)
                        .padding(.top, -topSafeAreaHeight)
                    
                    ForEach(viewModel.allCategories, id: \.self) { (category) in
                        VStack {
                            HStack {
                                Text(category).font(.title).bold().padding(.horizontal, 5)
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

struct TopRowButtons: View {
    var body: some View {
        HStack {
            Button(action: {
                print("Netflix Tapped")
            }, label: {
                Image("netflix")
                    .resizable()
                    .scaledToFit()
                    .frame(width : 40)
            })
                .buttonStyle(PlainButtonStyle())
            
            Spacer()
            
            Button(action: {
                print("TV Shows Tapped")
            }, label: {
                Text("TV Shows").foregroundColor(.white)
            })
            
            
            Spacer()
            
            Button(action: {
                print("Movies Tapped")
            }, label: {
                Text("Movies").foregroundColor(.white)
            })
            
            Spacer()
            
            Button(action: {
                print("My List Tapped")
            }, label: {
                Text("My List").foregroundColor(.white)
            })
        }
        .padding(.leading, 10)
        .padding(.trailing, 30)
    }
}

//
//  ContentView.swift
//  Movie App 1
//
//  Created by Fatma Alarbash on 26/08/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List{
                ForEach(MyMovies){movie in
                    NavigationLink(destination: {
                        MovieInfo(ourmovie: movie)
                    }, label: {
                        RowView(movie: movie.MovieName)
                    })
                        
                    }
                }.navigationTitle("Movies")
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


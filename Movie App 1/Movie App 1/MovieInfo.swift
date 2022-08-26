//
//  MovieInfo.swift
//  Movie App 1
//
//  Created by Fatma Alarbash on 26/08/2022.
//

import SwiftUI

struct MovieInfo: View {
    var ourmovie: MovieModel
    var body: some View {
        ZStack{Color.black.opacity(0.8).ignoresSafeArea()
            Image(ourmovie.MovieName).opacity(0.5).blur(radius: 20).ignoresSafeArea()
            VStack{
                Image(ourmovie.MovieName)
                    .resizable()
                    .scaledToFit().clipShape(Circle())
                    .frame(width: 250, height: 250)
                    
                Text(ourmovie.MovieName).font(.title).foregroundColor(.white)
                
                ScrollView(.horizontal){
                    HStack{
                        ForEach(ourmovie.MovieAct, id:\.self)
                                { act in
                                    VStack{
                                        Text(act).fontWeight(.bold).foregroundColor(.white)
                                        Image(act).resizable().scaledToFit()
                                            .frame(width: 180, height: 200)
                                    }
                            
                        }                    }
                }.frame(width: 400, height: 400)
            }
        }
    }
}

struct MovieInfo_Previews: PreviewProvider {
    static var previews: some View {
        MovieInfo(ourmovie:MovieModel(MovieName: "Maleficent", MovieAct: ["Angelina Jolie","Elle Fanning","Sam Riley","Vivienne Jolie-Pitt"]))
    }
}

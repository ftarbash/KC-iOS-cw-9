//
//  MovieModel.swift
//  Movie App 1
//
//  Created by Fatma Alarbash on 26/08/2022.
//

import Foundation

struct MovieModel:Identifiable{
    let id = UUID()
    var MovieName: String
    var MovieAct: [String]
}
var MyMovies = [
    MovieModel(MovieName: "Maleficent", MovieAct: ["Angelina Jolie","Elle Fanning","Sam Riley","Vivienne Jolie-Pitt"]),
    MovieModel(MovieName: "Enola Holmes", MovieAct: ["Millie Bobby Brown","Louis Partridge","Henry Cavill","Sam Claflin"]),
    MovieModel(MovieName: "Harry Potter", MovieAct: ["Daniel Radcliffe","Emma Watson","Rupert Grint"]),
    MovieModel(MovieName: "Home Alone", MovieAct: ["Macaulay Culkin","Joe Pesc","Daniel Stern"]),
    MovieModel(MovieName: "Matilda", MovieAct: ["Mara Wilson","Danny DeVito","Pam Ferris"])
    
    
]

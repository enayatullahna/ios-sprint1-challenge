//
//  MovieController.swift
//  Movie List
//
//  Created by Enayatullah Naseri on 5/17/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
class MovieController {
    
    init () { // movie list
        movies.append(Movie(name: "How to train your dragon"))
        movies.append(Movie(name: "Avengers: End Game"))
        movies.append(Movie(name: "Avatar"))
        movies.append(Movie(name: "Wall-E"))
        movies.append(Movie(name: "X-Men"))
        movies.append(Movie(name: "2012"))
        
    }
    
    private(set) var movies: [Movie] = [] // movie array
    
    func createMovie(with name: String) {
        
        let movie = Movie(name: name)
        movies.append(movie)
        
    }
    
    func updateMovie(with movie: Movie, name: String) {
        guard let index = movies.firstIndex(of: movie) else {return}
        movies[index].name = name
    }
    
    
    
    func delete(movie: Movie) { // delete cell
        guard let index = movies.firstIndex(of: movie) else {return}
        
        movies.remove(at: index)
    }
    
    
    
    func switchSeen(at indexPath: IndexPath) {
        self.movies[indexPath.row].seen = !self.movies[indexPath.row].seen // switch
    }
}




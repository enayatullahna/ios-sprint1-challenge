//
//  MovieController.swift
//  Movie List
//
//  Created by Enayatullah Naseri on 5/17/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
class MovieController {
    
    private(set) var movies: [Movie] = [] // movie array
    
    func createMovie(with name: String) {
        
        let movie = Movie(name: name)
        movies.append(movie)
        
    }
    
    func updateMovie(with movie: Movie, name: String) {
        guard let index = movies.firstIndex(of: movie) else {return}
        movies[index].name = name
    }
    
    //delete cell here
    
    func switchSeen(at indexPath: IndexPath) {
        self.movies[indexPath.row].seen = !self.movies[indexPath.row].seen // switch
    }
}




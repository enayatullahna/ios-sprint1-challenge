//
//  Movie.swift
//  Movie List
//
//  Created by Enayatullah Naseri on 5/17/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation


struct Movie: Equatable {
    var name: String
    var seen: Bool
    
    
    
    init(name: String, seen: Bool = false) { // setting seen to false by default
        
        
        self.name = name
        self.seen = seen
    }
}

//
//  MovieTableViewCellDelegate.swift
//  Movie List
//
//  Created by Enayatullah Naseri on 5/17/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

protocol MovieTableViewCellDelegate: class {
    func tappedTheSeenButton(on cell: MovieTableViewCell)
}

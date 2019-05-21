//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Enayatullah Naseri on 5/17/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    
    weak var delegate: MovieTableViewCellDelegate?
    
    private func updateViews(){
        guard let movie = self.movie else { return }
        self.movieNameLabel.text = movie.name
        
        if movie.seen == true {
            
            self.seenButton.setTitle("Seen", for: .normal)
        } else {
            self.seenButton.setTitle("Not Seen", for: .normal)
        }
    }
    
    @IBAction func seenTapped(_ sender: Any) {
        delegate?.tappedTheSeenButton(on: self)
    }
    
    

}

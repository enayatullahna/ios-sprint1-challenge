//
//  MovieViewController.swift
//  Movie List
//
//  Created by Enayatullah Naseri on 5/17/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController {
    
    let movieController = MovieController()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.movieController.movies.count
    }
    
    
    func tappedTheSeenButton(on cell: MovieTableViewCell) {
        guard let indexPath = self.tableView.indexPath(for: cell) else { return }
        
        self.movieController.switchSeen(at: indexPath)
        self.tableView.reloadRows(at: [indexPath], with: .none)
    }
    


}

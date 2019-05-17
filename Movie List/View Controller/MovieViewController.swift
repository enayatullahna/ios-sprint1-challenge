//
//  MovieViewController.swift
//  Movie List
//
//  Created by Enayatullah Naseri on 5/17/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, MovieTableViewCellDelegate  {
    
    let movieController = MovieController()
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.tableView.reloadData()
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.movieController.movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieListCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }
        
        let movie = self.movieController.movies[indexPath.row]
        cell.movieNameLabel.text = movie.name
        cell.delegate = self
        let seenText = movie.seen ? "Seen" : "Not Seen"
        cell.seenButton.setTitle(seenText, for: .normal)
        
        return cell
    }

    
    func tappedTheSeenButton(on cell: MovieTableViewCell) {
        guard let indexPath = self.tableView.indexPath(for: cell) else { return }
        
        self.movieController.switchSeen(at: indexPath)
        self.tableView.reloadRows(at: [indexPath], with: .none)
    }
    
    
    // Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toAddAMovie" {
            guard let addMovieViewController = segue.destination as? AddMovieViewController else { return }
            
            addMovieViewController.movieController = self.movieController
        }
    }
    


}

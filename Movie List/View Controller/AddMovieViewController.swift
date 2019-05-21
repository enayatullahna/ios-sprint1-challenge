//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Enayatullah Naseri on 5/17/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {
    var movieController: MovieController?
    
    @IBOutlet weak var movieNameTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addMovieButtonTapped(_ sender: Any) {
        guard let name = self.movieNameTextField.text else {return}
        
        if name != "" { // if movie name label is not empty, 
            self.movieController?.createMovie(with: name)
            navigationController?.popViewController(animated: true) // Goes back after entering movie name
        }
    }
    


}

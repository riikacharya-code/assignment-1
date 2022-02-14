//
//  MovieDetailsViewController.swift
//  Flix
//
//  Created by Riik Acharya on 2/7/22.
//

import UIKit

class MovieDetailsViewController: UIViewController {

    var movie: [String:Any]!
    
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var backdropView: UIImageView!
    
    @IBOutlet weak var synopsisLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        synopsisLabel.text = movie["overview"] as? String
        synopsisLabel.sizeToFit()
        
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        
        let posterPath = movie["poster_path"] as! String
        
        let posterUrl = URL(string: baseUrl + posterPath)
        
        posterView.af.setImage(withURL: posterUrl!)
        
        let baseUrlforBackdrop = "https://image.tmdb.org/t/p/w780"
        
        let backDropPath = movie["poster_path"] as! String
        
        let backDropUrl = URL(string: baseUrl + posterPath)
        
        backdropView.af.setImage(withURL: backDropUrl!)
    }
       
}

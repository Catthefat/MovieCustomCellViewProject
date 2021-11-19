//
//  ViewController.swift
//  CustomCellViewProject
//
//  Created by kristians.tide on 18/11/2021.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    var movie: Movie!
    var webView = WKWebView()

    @IBOutlet weak var TrailerButton: UIButton!
    @IBOutlet weak var MovieDescriptionLabel: UILabel!
    @IBOutlet weak var MovieGerneLabel: UILabel!
    @IBOutlet weak var MovieYearLabel: UILabel!
    @IBOutlet weak var MovieNameLabel: UILabel!
    @IBOutlet weak var MovieImageView: UIImageView!
    @IBOutlet weak var MovieWebView: WKWebView!


    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
            MovieYearLabel.text = "Year: \(movie.year)"
            MovieGerneLabel.text = "Gerne: \(movie.gerne)"
            MovieDescriptionLabel.text = movie.description
            MovieImageView.image = UIImage(named: movie.poster)
            MovieNameLabel.text = movie.movie
            MovieWebView.isHidden = true
        
        
        
    }
    
    @IBAction func TrailerButtonTapped(_ sender: UIButton) {
        MovieWebView.isHidden = false
        LoadVideoView()
        TrailerButton.isHidden = true
    }
    
    func LoadVideoView() {
        let urlString = movie.UrlString
        guard let movieUrl = URL(string: urlString) else { return  }
        MovieWebView.load(URLRequest(url: movieUrl))
    }
    


}


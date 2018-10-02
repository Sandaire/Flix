//
//  DetailViewController.swift
//  Flix
//
//  Created by Admin on 10/1/18.
//  Copyright © 2018 Sandyna Sandaire Jerome. All rights reserved.
//

import UIKit

enum MovieKeys {
    
    static let backdropPath = "backdrop_path"
    static let posterPath = "poster_path"
    static let title = "title"
    static let overview = "overview"
    static let date = "release_date"
   
    
}

class DetailViewController: UIViewController {

    @IBOutlet weak var BackdropImageView: UIImageView!
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    
    
    var movie: [String : Any]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let title = movie![MovieKeys.title] as! String
        let overview = movie![MovieKeys.overview] as! String
        let date = movie![MovieKeys.date] as! String
        
        titleLabel.text = title
        overviewLabel.text = overview
        releaseDateLabel.text = date
        
        let backdropPathString = movie![MovieKeys.backdropPath] as! String
        let posterPathString = movie![MovieKeys.posterPath] as! String
        let baseURLString = "https://image.tmdb.org/t/p/w500/"
        
        let backDropURL = URL(string: baseURLString + backdropPathString)!
        BackdropImageView.af_setImage(withURL: backDropURL)
        
        let posterURL = URL(string: baseURLString + posterPathString)!
        posterImageView.af_setImage(withURL: posterURL)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

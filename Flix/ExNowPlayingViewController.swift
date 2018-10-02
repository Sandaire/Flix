//
//  NowPlayingViewController.swift
//  Flix
//
//  Created by Sandyna Sandaire Jerome on 9/28/18.
//  Copyright © 2018 Sandyna Sandaire Jerome. All rights reserved.
//
/*
import UIKit

class NowPlayingViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    var movies: [[String: Any]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         tableView.dataSource = self
        tableView.delegate = self
        print("ok 1")
        
        
        let url = URL(string: "https://api.themoviedb.org/3/movie/now_playing?api_key=a07e22bc18f5cb106bfe4cc1f83ad8ed")!
        let request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 10)
        let session = URLSession(configuration: .default, delegate: nil, delegateQueue: OperationQueue.main)
        let task = session.dataTask(with: request) { (data, response, error) in
            // This will run when the network request returns
            if let error = error {
                print(error.localizedDescription)
            } else if let data = data {
                let dataDictionary = try! JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]
                
                let movies = dataDictionary ["results"] as! [[String:  Any]]
                /*for movie in movies{
                    let title = movie["title"] as! String
                    print(title)
                }*/
                self.movies = movies
                
            }
        }
        task.resume()
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("Hello \(movies.count)")
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)
        print("Hello \(movies.count)")
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
 
 */

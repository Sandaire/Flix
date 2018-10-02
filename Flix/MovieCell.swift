//
//  MovieCell.swift
//  Flix
//
//  Created by Sandyna Sandaire Jerome on 9/29/18.
//  Copyright © 2018 Sandyna Sandaire Jerome. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    @IBOutlet weak var overviewLabel: UILabel!
    
   
    @IBOutlet weak var posterImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  MoviePosterTableViewCell.swift
//  PlayHouse
//
//  Created by Rushikesh Potdar on 02/01/23.
//

import UIKit

class MoviePosterTableViewCell: UITableViewCell {

    @IBOutlet weak var posterImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        let gradient = CAGradientLayer()
        gradient.frame = posterImageView.bounds
        gradient.colors = [UIColor.clear.cgColor, UIColor.black.cgColor]
        gradient.locations = [0.0, 0.99]
        posterImageView.layer.insertSublayer(gradient, at: 0)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

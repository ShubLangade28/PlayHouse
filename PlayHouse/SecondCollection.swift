//
//  SecondCollection.swift
//  PlayHouse
//
//  Created by shubhan.langade on 04/01/23.
//

import UIKit

class SecondCollection: UICollectionViewCell {
    let myImageView = UIImageView()
   
   func config(cellWith image : UIImage){
       myImageView.translatesAutoresizingMaskIntoConstraints = false
       self.addSubview(myImageView)
       myImageView.image = image
       myImageView.contentMode = .scaleToFill
       myImageView.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor).isActive = true
       //myImageView.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor).isActive = true
       print("height \(self.frame.height)")
       print("width \(self.frame.width)")
       myImageView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 0).isActive = true
       myImageView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: 0).isActive = true
       myImageView.heightAnchor.constraint(equalToConstant: self.frame.height).isActive = true
       myImageView.widthAnchor.constraint(equalToConstant: self.frame.width).isActive = true
   }
}

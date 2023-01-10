//
//  ContentDetailsController.swift
//  PlayHouse
//
//  Created by shubhan.langade on 03/01/23.
//

import UIKit

class ContentDetailsController: UIViewController {
    @IBOutlet weak var myCollectionView: UICollectionView!
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var moreLikeThisCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let gradient = CAGradientLayer()
        gradient.frame = thumbnailImageView.bounds
        gradient.colors = [UIColor.clear.cgColor, UIColor.black.cgColor]
        gradient.locations = [0.0, 0.99]
        thumbnailImageView.layer.insertSublayer(gradient, at: 0)
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
        moreLikeThisCollectionView.delegate = self
        moreLikeThisCollectionView.dataSource = self
        // Do any additional setup after loading the view. SecondCollection
    }
}
extension ContentDetailsController : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == myCollectionView{
        return 10
        }
        else if collectionView == moreLikeThisCollectionView{
        return 30
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == myCollectionView{
            let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "FirstCollection", for: indexPath) as! FirstCollection
            cell.config(cellWith: UIImage(named: "Moneyheist")!)
                    return cell
        }
        else if collectionView == moreLikeThisCollectionView{
            let cell = moreLikeThisCollectionView.dequeueReusableCell(withReuseIdentifier: "SecondCollection", for: indexPath) as! SecondCollection
            cell.config(cellWith: UIImage(named: "Moneyheist")!)
                    return cell
        }
        return UICollectionViewCell()
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
        {
            if collectionView == myCollectionView{
                return CGSize(width: 100.0, height: 100.0)
            }
            else if collectionView == moreLikeThisCollectionView{
                return CGSize(width: 110.0, height: 200.0)
            }
            return CGSize(width: 0, height: 0)
        }
}

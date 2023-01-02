//
//  ViewController.swift
//  PlayHouse
//
//  Created by shubhan.langade on 27/12/22.
//

import UIKit

class AccountController: UIViewController {
    @IBOutlet weak var accountCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        accountCollectionView.delegate = self
        accountCollectionView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func colors(color : [CGColor], account : AccountCell){
        let gradient = CAGradientLayer()
        gradient.frame = account.bounds
        gradient.colors = color
        gradient.startPoint = CGPoint.zero
        gradient.endPoint = CGPoint(x: 1, y: 1)
        account.avtarImageview.layer.insertSublayer(gradient, at: 0)
        //return account
    }
}

extension AccountController : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let account = accountCollectionView.dequeueReusableCell(withReuseIdentifier: "AccountCell", for: indexPath) as! AccountCell
        account.avtarImageview.layer.cornerRadius = 10
        if indexPath.row == 0{
            colors(color: [UIColor.cyan.cgColor, UIColor.white.cgColor], account: account)
            return account
        }else if indexPath.row == 1{
            colors(color: [UIColor.orange.cgColor, UIColor.white.cgColor], account: account)
            return account
        }else if indexPath.row == 2{
            colors(color: [UIColor.blue.cgColor, UIColor.white.cgColor], account: account)
            return account
        }
        else if indexPath.row == 3{
            colors(color: [UIColor.cyan.cgColor, UIColor.white.cgColor], account: account)
            return account
        }else{
            colors(color: [UIColor.yellow.cgColor, UIColor.white.cgColor], account: account)
            return account
        }
        
//        else if indexPath.row == 1{
//            gradient.frame = account.bounds
//            gradient.colors = [UIColor.orange.cgColor, UIColor.white.cgColor]
//            gradient.startPoint = CGPoint.zero
//            gradient.endPoint = CGPoint(x: 1, y: 1)
//            account.avtarImageview.layer.insertSublayer(gradient, at: 0)
//        }
//        else if indexPath.row == 2{
//            gradient.frame = account.bounds
//            gradient.colors = [UIColor.blue.cgColor, UIColor.white.cgColor]
//            gradient.startPoint = CGPoint.zero
//            gradient.endPoint = CGPoint(x: 1, y: 1)
//            account.avtarImageview.layer.insertSublayer(gradient, at: 0)
//        }
//        else if indexPath.row == 3{
//            gradient.frame = account.bounds
//            gradient.colors = [UIColor.cyan.cgColor, UIColor.white.cgColor]
//            gradient.startPoint = CGPoint.zero
//            gradient.endPoint = CGPoint(x: 1, y: 1)
//            account.avtarImageview.layer.insertSublayer(gradient, at: 0)
//        }
//        else if indexPath.row == 4{
//            gradient.frame = account.bounds
//            gradient.colors = [UIColor.yellow.cgColor, UIColor.white.cgColor]
//            gradient.startPoint = CGPoint.zero
//            gradient.endPoint = CGPoint(x: 1, y: 1)
//            account.avtarImageview.layer.insertSublayer(gradient, at: 0)
//        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
        {
           return CGSize(width: 130.0, height: 160.0)
        }
    
    
    
}

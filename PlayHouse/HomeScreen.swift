//
//  HomeScreen.swift
//  PlayHouse
//
//  Created by Rushikesh Potdar on 02/01/23.
//

import UIKit

class HomeScreen: UIViewController {
    
    @IBOutlet weak var HomeScreenTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        HomeScreenTableView.delegate = self
        HomeScreenTableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
}

extension HomeScreen : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MoviePosterTableViewCell", for: indexPath) as? MoviePosterTableViewCell else {return UITableViewCell()}
        cell.backgroundColor = .systemPink
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        360
    }
}

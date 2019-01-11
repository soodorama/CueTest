//
//  OrderNowVC.swift
//  Cue Test
//
//  Created by Neil Sood on 1/10/19.
//  Copyright © 2019 Neil Sood. All rights reserved.
//

import UIKit

class OrderNowVC: UIViewController {

    var restaurants = ["chipotle", "mcdonalds", "shakeshack", "starbucks", "subway", "tropicalsmoothie"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

extension OrderNowVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurants.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RestaurantCell", for: indexPath) as! RestaurantCell
        cell.restaurantLogoImageView.image = UIImage(named: restaurants[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: MakeOrderSegue, sender: indexPath)
    }
    
}

//
//  ViewController.swift
//  Brenda_L_TableView_exercise
//
//  Created by Brenda Leyva on 8/5/20.
//  Copyright © 2020 Brenda Leyva. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let BrendasGames = ["GTA" , "Fortnite", "Heavy Rain",
        "Mortsl Kombat 11"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return BrendasGames.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycellID")
        cell?.textLabel?.text = BrendasGames[indexPath.row]
        return cell!
    }
}

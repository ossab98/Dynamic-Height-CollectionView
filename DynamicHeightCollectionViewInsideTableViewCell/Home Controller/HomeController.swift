//
//  ViewController.swift
//  DynamicHeightCollectionViewInsideTableViewCell
//
//  Created by Ossama Abdelwahab on 23/10/2020.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var arr = ["OSSAMA", "ABDELRAHMAN", "MARCO", "ITALIA", "MILANO", "CAIRO", "FAYOUM", "CIAO", "BENE", "ORANGE", "FABIO", "TEST", "PROVO", "FUNZIONA", "ALESSANDRO", "DOVE SEI?", "ALLORA!","Pasta", "Carne", "Biscotti", "Involtini di pollo","Ciao", "come va?", "Ti volevo racontare una cosa","Giuseppe", "Matteo", "Luca","Ciao, come stai?", "Tutto bene", "OK"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.reloadData()
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.configure(self.arr)
        return cell
    }
}

//
//  TableViewController.swift
//  ReuseCell
//
//  Created by Apple on 9/18/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    let datas: [Int] = [Int](1...100)
    var numberOfCell: Int = 0 {
        didSet {
            title = "Số cell: \(numberOfCell)"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return datas.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        if cell == nil {
            cell = TableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
            numberOfCell += 1
        }
        if [10, 20, 30, 40, 50, 60, 70, 80, 90, 100].contains(datas[indexPath.row]) {
            cell?.backgroundColor = UIColor.red
        }
        cell?.textLabel?.text = String(datas[indexPath.row])
        return cell ?? UITableViewCell()
    }
}

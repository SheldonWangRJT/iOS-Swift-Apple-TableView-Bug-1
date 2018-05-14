//
//  TVC.swift
//  TestDragTable
//
//  Created by Wang Xiaodan on 1/8/18.
//  Copyright © 2018 Wang Xiaodan. All rights reserved.
//

import UIKit

class TVC: UITableViewController {

    var ary = [
        "title1",
        "title1\n",
        "title1\n\n\n",
        "title1",
        "title1\n\n",
        "title1",
        "title1\n\n\n",
        "title1\n\n",
        "title1",
        "title1\n",
        "title1\n\n\n",
        "title1",
        "title1\n\n",
        "title1",
        "title1\n\n\n",
        "title1\n\n",
        "title1",
        "title1\n",
        "title1\n\n\n",
        "title1",
        "title1\n\n",
        "title1",
        "title1\n\n\n",
        "title1\n\n",
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ary.count
    }

    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = ary[indexPath.row]
        cell.contentView.layer.cornerRadius = 15
        cell.contentView.layer.borderWidth = 2
        cell.contentView.layer.borderColor = UIColor.blue.cgColor
        return cell
    }

    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            ary.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
        }    
    }

}

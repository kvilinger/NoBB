//
//  NBMainPageController.swift
//  NoBB
//
//  Created by DarrenW on 2018/1/2.
//  Copyright © 2018年 Darren. All rights reserved.
//

import UIKit

class NBMainPageController: UIViewController {
    var datasource = NBMainPageDataSource(items: [], owner: nil)
    lazy var tableView: UITableView = {
        let table = UITableView(frame: self.view.frame, style: .plain)
        table.dataSource = datasource
        table.delegate = self
        table.rowHeight = 140
        table.tableFooterView = UIView()
        table.separatorStyle = .none
        table.register(UINib(nibName: "NBMainPageCell", bundle: nil), forCellReuseIdentifier: "NBMainPageCell")
        return table
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
    }
}

extension NBMainPageController: UITableViewDelegate {
    
}

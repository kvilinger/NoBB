//
//  NBMainPageDataSource.swift
//  NoBB
//
//  Created by DarrenW on 2018/1/2.
//  Copyright © 2018年 Darren. All rights reserved.
//

import UIKit

class NBMainPageDataSource: NSObject {
    weak var owner: UITableView?
    var items:[String]
    
    init(items: [String], owner: UITableView?) {
        self.items = items
        self.owner = owner
    }
}

extension NBMainPageDataSource:  UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NBMainPageCell") as! NBMainPageCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 13
    }
}


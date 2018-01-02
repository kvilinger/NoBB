//
//  ViewController.swift
//  NoBB
//
//  Created by DarrenW on 2018/1/2.
//  Copyright © 2018年 Darren. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bgScrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()
        bgScrollView.contentSize = CGSize(width: 2*view.frame.width, height: 0)
        let bg1 = NBLaunchImageView.loadImage(image: #imageLiteral(resourceName: "bg_01"))
        bg1.setTitleText(text: "生活不止眼前的苟且").setContentText(text: "还有诗和远方").frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        let bg2 = NBLaunchImageView.loadImage(image: #imageLiteral(resourceName: "bg_02"))
        bg2.setTitleText(text: "一去二三里").setContentText(text: "烟村四五家，亭台六七座").frame = CGRect(x: view.frame.width, y: 0, width: view.frame.width, height: view.frame.height)
        bgScrollView.addSubview(bg1)
        bgScrollView.addSubview(bg2)
    }

}


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
        configLaunchPage()
    }
    
    private func configLaunchPage() {
        bgScrollView.contentSize = CGSize(width: 4*view.frame.width, height: 0)
        addSubPage(image: #imageLiteral(resourceName: "bg_01"), title: "生活不止眼前的苟且", content: "还有诗和远方")
            .addSubPage(image: #imageLiteral(resourceName: "bg_02"), title: "一去二三里", content: "烟村四五家，亭台六七座")
            .addSubPage(image: #imageLiteral(resourceName: "bg_03"), title: "春江水暖鸭先知", content: "借问酒家何处有，牧童遥指杏花村")
            .addSubPage(image: #imageLiteral(resourceName: "bg_02"), title: "七八个秋天外", content: "旧时茅店社里边，HelloWorld")
    }
    
    @discardableResult private func addSubPage(image:UIImage, title:String, content:String)->ViewController{
        let page = NBLaunchImageView.loadImage(image: image)
        let xValue = CGFloat(bgScrollView.subviews.count)*view.frame.width
        page.setTitleText(text: title).setContentText(text: content).frame = CGRect(x: xValue, y: 0, width: view.frame.width, height: view.frame.height)
        bgScrollView.addSubview(page)
        return self
    }
    
    
}


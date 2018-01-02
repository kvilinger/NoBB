//
//  NBLogonController.swift
//  NoBB
//
//  Created by DarrenW on 2018/1/2.
//  Copyright © 2018年 Darren. All rights reserved.
//

import UIKit

class NBLogonController: UIViewController {

    @IBOutlet weak var logonView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configLogonView()
    }

    private func configLogonView() {
        logonView.layer.borderColor = UIColor.gray.cgColor
        logonView.layer.borderWidth = 0.5
        logonView.layer.shadowColor = UIColor.gray.cgColor
        logonView.layer.shadowRadius = 12
        logonView.layer.shadowOpacity = 1
        logonView.layer.shadowOffset = CGSize.zero
    }
    
}

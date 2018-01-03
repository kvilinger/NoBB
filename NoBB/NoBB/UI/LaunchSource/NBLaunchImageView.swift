//
//  NBLaunchImageView.swift
//  NoBB
//
//  Created by DarrenW on 2018/1/2.
//  Copyright © 2018年 Darren. All rights reserved.
//

import UIKit

class NBLaunchImageView: UIImageView {
    
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    
    class func loadImage(image: UIImage?) -> NBLaunchImageView {
        let nib = UINib(nibName: "NBLaunchImageView", bundle: nil)
        let view = nib.instantiate(withOwner: self, options: nil).first as! NBLaunchImageView
        view.iconImageView.image = image
        return view
    }
    
    @discardableResult func addTitleText(text: String?) -> NBLaunchImageView {
        titleLabel.text = text
        return self
    }
    
    @discardableResult func addContentText(text: String?) -> NBLaunchImageView {
        contentLabel.text = text
        return self
    }
    
    @discardableResult func addBackgroundColor(color: UIColor?) -> NBLaunchImageView {
        backgroundColor = color
        return self
    }
}

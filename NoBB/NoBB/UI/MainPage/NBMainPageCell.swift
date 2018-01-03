//
//  NBMainPageCell.swift
//  NoBB
//
//  Created by DarrenW on 2018/1/2.
//  Copyright © 2018年 Darren. All rights reserved.
//

import UIKit

class NBMainPageCell: UITableViewCell {

    /// 标题label
    @IBOutlet private weak var titleLabel: UILabel!
    /// 内容label
    @IBOutlet private weak var contentLabel: UILabel!
    /// 背景图
    @IBOutlet private weak var backgroundImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    @discardableResult func addTitle(title: String) -> NBMainPageCell {
        titleLabel.text = title
        return self
    }
    
    @discardableResult func addContent(content: String) -> NBMainPageCell {
        contentLabel.text = content
        return self
    }
    
    @discardableResult func addBgImage(image: UIImage) -> NBMainPageCell {
        backgroundImageView.image = image
        return self
    }
    
}

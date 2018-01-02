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
    @IBOutlet weak var logonViewTop: NSLayoutConstraint!
    
    var keyBoardIsShow = false
    
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configLogonView()
        registerNotification()
    }

    private func registerNotification() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notify:)), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(notify:)), name: Notification.Name.UIKeyboardWillHide, object: nil)
    }
    
    private func configLogonView() {
        logonView.layer.borderColor = UIColor.gray.cgColor
        logonView.layer.borderWidth = 0.5
        logonView.layer.shadowColor = UIColor.gray.cgColor
        logonView.layer.shadowRadius = 12
        logonView.layer.shadowOpacity = 1
        logonView.layer.shadowOffset = CGSize.zero
    }
    
    @objc func keyboardWillShow(notify: NSNotification) {
        if keyBoardIsShow {
           return
        }
        let endFrame = (notify.userInfo?[UIKeyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
        DispatchQueue.main.async {
            UIView.animate(withDuration:0.3) {
                self.logonViewTop.constant -= endFrame.height/2.0
                self.view.layoutIfNeeded()
                self.keyBoardIsShow = true
            }
        }
    }
    
    @objc func keyboardWillHide(notify: NSNotification) {
        let endFrame = (notify.userInfo?[UIKeyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
        DispatchQueue.main.async {
            UIView.animate(withDuration:0.3) {
                self.logonViewTop.constant += endFrame.height/2.0
                self.view.layoutIfNeeded()
                self.keyBoardIsShow = false
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
}

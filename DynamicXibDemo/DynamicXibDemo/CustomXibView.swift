//
//  CustomXibView.swift
//  DynamicXibDemo
//
//  Created by Zhao Yiqi on 2017/7/2.
//  Copyright © 2017年 admin. All rights reserved.
//

import UIKit

class CustomXibView: DynamicXibView {
    
    @IBOutlet weak var lblTitle: DynamicXibLabel!

    @IBOutlet weak var imgLogo: UIImageView!
    
    @IBInspectable var logoImg: UIImage? {
        get {
            return imgLogo.image
        }
        set {
            imgLogo.image = newValue
        }
    }
    
    @IBInspectable var titleLbl: String?{
        get {
            return lblTitle.text
        }
        set {
            lblTitle.text = newValue
        }
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}

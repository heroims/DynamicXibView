//
//  DynamicXibView.swift
//  StoryBoardXibDemo
//
//  Created by admin on 2017/6/30.
//  Copyright © 2017年 Yasin. All rights reserved.
//

import UIKit

@IBDesignable open class DynamicXibView: UIView {
    @IBOutlet var contentView: UIView!

    override init(frame: CGRect) {
        super.init(frame: frame)
        initFromXIB()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initFromXIB()
    }
    
    override open func layoutSubviews() {
        super.layoutSubviews()
        if (contentView != nil) {
            contentView.frame = bounds
        }
    }

    func initFromXIB() {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: self.className(), bundle: bundle)
        contentView = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        contentView.frame = bounds
        self.addSubview(contentView)
    }
    
    /*
     // Only override drawRect: if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func drawRect(rect: CGRect) {
     // Drawing code
     }
     */
    
}

extension NSObject{
    func className() -> String {
        let classFullName = NSStringFromClass(self.classForCoder)
        let nameArray = classFullName.components(separatedBy: ".")
        if nameArray.count>0 {
            let lastName = nameArray.last
            return lastName!;
        }
        return ""
    }
}

extension UIViewController{
    static func instantiateViewController(storyBoardID:String,storyBoardName:String) -> UIViewController{
        let storyBoard = UIStoryboard(name: storyBoardName, bundle: nil)
        return storyBoard.instantiateViewController(withIdentifier: storyBoardID);
    }
}

extension UIView{

    @IBInspectable var cornerRadius: CGFloat {
        get {
            return self.layer.cornerRadius
        }
        set {
            self.layer.cornerRadius = newValue
            self.layer.masksToBounds = true;
        }
    }
    @IBInspectable var borderColor: UIColor {
        get {
            return UIColor(cgColor: self.layer.borderColor as CGColor!)
        }
        set {
            self.layer.borderColor = newValue.cgColor
        }
    }
    @IBInspectable var borderWidth: CGFloat {
        get {
            return self.layer.borderWidth
        }
        set {
            self.layer.borderWidth = newValue
        }
    }
    @IBInspectable var shadowColor: UIColor {
        get {
            return UIColor(cgColor: self.layer.shadowColor as CGColor!)
        }
        set {
            self.layer.shadowColor = newValue.cgColor
        }
    }
    @IBInspectable var shadowRadius: CGFloat {
        get {
            return self.layer.shadowRadius
        }
        set {
            self.layer.shadowRadius = newValue
        }
    }
    @IBInspectable var shadowOffset: CGSize {
        get {
            return self.layer.shadowOffset;
        }
        set {
            self.layer.shadowOffset = newValue
        }
    }
    @IBInspectable var shadowOpacity: Float {
        get {
            return self.layer.shadowOpacity;
        }
        set {
            self.layer.shadowOpacity = newValue
        }
    }
    @IBInspectable var masksToBounds: Bool {
        get {
            return self.layer.masksToBounds
        }
        set {
            self.layer.masksToBounds = newValue
        }
    }
    @IBInspectable var shouldRasterize: Bool {
        get {
            return self.layer.shouldRasterize
        }
        set {
            self.layer.shouldRasterize = newValue
        }
    }
    @IBInspectable var allowsEdgeAntialiasing: Bool {
        get {
            return self.layer.allowsEdgeAntialiasing
        }
        set {
            self.layer.allowsEdgeAntialiasing = newValue
        }
    }
}

@IBDesignable open class DynamicXibImageView: UIImageView {
}

@IBDesignable open class DynamicXibLabel: UILabel {
}

@IBDesignable open class DynamicXibButton: UIButton {
}

